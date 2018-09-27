{-# LANGUAGE Rank2Types   #-}
module AbstractStructure where

import Text.JSON
import Text.JSON.Types (get_field)
import Data.Ratio
import Control.Lens

newtype AbstractStructure = AbstractStructure (JSObject JSValue)

data Value = ValueVoid
           | ValueInt    Int
           | ValueChar   Char
           | ValueBool   Bool
           | ValueString String
           | ValueObject AbstractStructure
           | ValueQix    QixObject
           | ValueArray  [Value]

type Handle = Int
data QixObject = QixObject Handle String deriving Show

instance Show Value where
  show v = case v of
    ValueVoid     -> "()"
    ValueInt    n -> show n
    ValueChar   c -> [c]
    ValueBool   b -> show b
    ValueString s -> s
    ValueObject (AbstractStructure json) -> show json
    ValueArray values -> show values

instance JSON Value where
  readJSON v = case v of
    JSRational asFloat rational -> if denominator rational == 1
                                   then Ok (ValueInt (fromIntegral (numerator rational)))
                                   else error "JSRational on float value."
    JSString jsstring -> Ok (ValueString (fromJSString jsstring))
    JSBool jsbool -> Ok (ValueBool jsbool)
    JSObject jsobj -> Ok (ValueObject (AbstractStructure jsobj))
    JSArray jsvalues -> case mapM readJSON jsvalues of
      Ok values -> Ok (ValueArray values)
      Error x -> error "x"
  showJSON v = case v of
    ValueInt    n -> showJSON n
    ValueChar   c -> showJSON c
    ValueString s -> showJSON s
    ValueObject (AbstractStructure jsobj) -> showJSON jsobj
    ValueArray  values -> showJSONs values

deleteFirstBy :: Eq a => a -> (b -> a) -> [b] -> [b]
deleteFirstBy x f xs = let (start, end) = break (\y -> x == f y) xs
                        in start ++ (if null end then [] else tail end)

class ValueType a where
  toValue :: a -> Value
  fromValue :: Value -> a
  joinArray :: [a] -> Value
  joinArray values = ValueArray (map toValue values)
  defaultValue :: a
  defaultValue = undefined

instance ValueType () where
  toValue _ = ValueVoid
  fromValue v = case v of
    ValueVoid -> ()
    _ -> error "fromValue Void"
  defaultValue = ()

instance ValueType Bool where
  toValue b = ValueBool b
  fromValue v = case v of
    ValueBool b -> b
    _ -> error "fromValue Bool"
  defaultValue = False

instance ValueType Int where
  toValue n = ValueInt n
  fromValue v = case v of
    ValueInt n -> n
    _ -> error "fromValue Int"
  defaultValue = 0

instance ValueType Double where
  toValue n = error "toValue Double"
  fromValue v = case v of
--    ValueInt n -> n
    _ -> error "fromValue Double"
  defaultValue = 0

instance ValueType Char where
  toValue c = ValueChar c
  fromValue v = case v of
    ValueChar c -> c
    _ -> error "fromValue Char"
  joinArray values = ValueString values

instance ValueType QixObject where
  toValue obj = ValueQix obj
  fromValue v = case v of
    ValueQix    qixObj -> qixObj
    ValueObject as -> case readJSON (showJSON as) of
      Error e -> error $ "Unable to parse QixObject. " ++ e ++ ": " ++ show as
      Ok o    -> o
    _ -> error ("fromValue QixObject " ++ show v)
  defaultValue = QixObject undefined undefined
         
instance JSON QixObject where
  showJSON _ = error "QixObject showJSON is undefined."
  readJSON v = case v of
    JSObject obj ->
      let h = getProp obj "qHandle"
          t = getProp obj "qType"
       in Ok (QixObject h t)
    _ -> error $ "Type error parsing QixObject (" ++ show v ++ ")"

getProp :: JSON a => JSObject JSValue -> String -> a
getProp obj prop =
  let m_p = get_field obj prop
   in case fmap readJSON m_p of
        Just (Error e) -> error ("getProp: " ++ e ++ "(" ++ show m_p ++")")
        Just (Ok n) -> n
        Nothing -> error $ "Could not find property " ++ prop ++ " in json " ++ (show (AbstractStructure obj))

instance ValueType AbstractStructure where
  toValue abs = ValueObject abs
  fromValue v = case v of
    ValueObject abs -> abs
    _ -> error "fromValue AbstractStructure"
  defaultValue = emptyAs

-- instance AbstractStructureContainer a => ValueType a where
--    toValue c = ValueObject (fromtoAs c)
--    fromValue v = case v of
--      ValueObject abs -> toAs abs
--      _ -> error "fromValue AbstractStructure"

instance ValueType a => ValueType [a] where
  toValue arr = joinArray arr
  fromValue v = case v of
    ValueArray arr -> map fromValue arr
    ValueString txt -> map (fromValue.toValue) txt
    _ -> error ("fromValue Array: " ++ show v)
  defaultValue = []

type JSONPath = String

instance Show AbstractStructure where
  show (AbstractStructure jsobject) = encode jsobject

instance JSON AbstractStructure where
  showJSON (AbstractStructure o) = JSObject o
  readJSON v = case v of 
    JSObject o -> Ok (AbstractStructure o)
    _ -> Error "readJSON on non-object"

emptyAs = AbstractStructure (toJSObject [])

asSet :: (JSONPath, Value) -> AbstractStructure -> AbstractStructure
asSet (path, value) (AbstractStructure jsobj) =
  let newValues = deleteFirstBy path fst $ fromJSObject jsobj
   in AbstractStructure (toJSObject $ (path, showJSON value):newValues)

asSetMany :: [(JSONPath, Value)] -> AbstractStructure -> AbstractStructure
asSetMany values as = foldr asSet as values

asGetC :: ValueType a => JSONPath -> AbstractStructure -> Maybe a
asGetC path abs = fmap fromValue (asGet path abs)

asGet :: JSONPath -> AbstractStructure -> Maybe Value
asGet path abs@(AbstractStructure jsobj) =
  if ('/' `elem` path)
  then
    asGetPath (wordsBy '/' path) abs
  else
    case lookup path $ fromJSObject jsobj of
      Nothing -> Nothing
      Just v  -> case readJSON v of
        Error e -> undefined
        Ok    q -> Just q

wordsBy :: Eq a => a -> [a] -> [[a]]
wordsBy x xs = let (pre, post) = break (==x) xs
                in pre:( case post of
                           [] -> []
                           _  -> wordsBy x (tail post)
                       )

asGetPath :: [JSONPath] -> AbstractStructure -> Maybe Value
asGetPath [] value = Just $ ValueObject value
asGetPath [p] value = asGet p value
asGetPath (p:ps) value = case asGet p value of
  Nothing -> Nothing
  Just (ValueObject obj) -> asGetPath ps obj
  _ -> error "asGetPath on non-object property."

class AbstractStructureContainer a where
  toAs   :: a -> AbstractStructure
  fromAs :: AbstractStructure -> a

cp_ :: (AbstractStructureContainer a, ValueType b) => String -> Lens' a b
cp_ = ascGenericLens

cps_ :: (AbstractStructureContainer a, ValueType b) => [String] -> Lens' a b
cps_ [] = error "cps_ []"
cps_ [p] = cp_ p
cps_ (p:ps) = cp_ p . ps_ ps

p_ :: ValueType b => String -> Lens' AbstractStructure b
p_ = asPropValueLens

ps_ :: ValueType b => [String] -> Lens' AbstractStructure b
ps_ [] = error "ps_ []"
ps_ [p] = p_ p
ps_ (p:ps) = p_ p . ps_ ps

ascLens :: AbstractStructureContainer a => Lens' a AbstractStructure
ascLens f asc = fmap (\as -> fromAs as) (f $ toAs asc)

ascStringLens :: AbstractStructureContainer a => String -> Lens' a String
ascStringLens prop = ascLens . (asPropValueLens prop)

ascIntLens :: AbstractStructureContainer a => String -> Lens' a Int
ascIntLens prop = ascLens . (asPropValueLens prop)

ascBoolLens :: AbstractStructureContainer a => String -> Lens' a Bool
ascBoolLens prop = ascLens . (asPropValueLens prop)

ascGenericLens :: (AbstractStructureContainer a, ValueType b) => String -> Lens' a b
ascGenericLens prop = ascLens . (asPropValueLens prop)

ascArrayLens :: (AbstractStructureContainer a, ValueType b) => String -> Lens' a [b]
ascArrayLens prop = ascLens . (asPropValueLens prop)

ascObjectLens :: (AbstractStructureContainer a, AbstractStructureContainer b)
              => String -> Lens' a b
ascObjectLens prop = ascLens . (asPropValueLens prop) . asContainerLens

asPropValueLens :: ValueType a => String -> Lens' AbstractStructure a
asPropValueLens prop f as = 
  fmap (\x -> asSet (prop, toValue x) as)
       (f $ maybe defaultValue fromValue (asGet prop as))

asContainerLens :: AbstractStructureContainer a => Lens' AbstractStructure a
asContainerLens f as = fmap (\asc -> toAs asc) (f $ fromAs as)
