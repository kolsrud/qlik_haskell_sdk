module Main where

import HSDK
import SDKBase -- (withConnection, asSet, emptyAs)
import SDKMonad (SDKM)
import Control.Monad.Trans (liftIO)
import Text.JSON (encode)
import Data.Maybe
import AbstractStructure
import GenericObject
--import GenericObjectLayout
import ModelEngine
import Control.Lens
import Control.Concurrent
import System.IO
       
main :: IO ()
main = do 
  putStrLn "Start"
  withConnection "127.0.0.1" 4848 myProg
  
myProg :: SDKM ()
myProg = do
  app <- openApp "Sales Discovery"
  v   <- evaluate app "Sum([Sales Amount])"
  liftIO $ putStrLn v

myProg2 = do
  app        <- openApp "Sales Discovery"
  sheetList  <- createSessionObject app sheetListProps
  listLayout <- getLayout sheetList
  if (null (listLayout ^. qExtendsId))
   then
    liftIO $ putStrLn "No master object"
   else
    liftIO $ putStrLn "Master object"
  liftIO $ print listLayout
  let allEntries = listLayout ^. cps_ ["qAppObjectList", "qItems"]
  let allIds = map (^. ps_ ["qInfo", "qId"]) allEntries
  liftIO $ putStrLn ("Number of sheets: " ++ show (length allIds))
  liftIO $ putStrLn ("Sheet ids: " ++ show allIds)
  sheetObjects <- mapM (getObject app) allIds
  allChildren  <- fmap concat $ mapM (getAllChildren app) sheetObjects
  liftIO $ putStrLn ("Number of children: " ++ show (length allChildren))
  liftIO $ putStrLn "Getting layouts..."
  layouts <- mapM getLayout (sheetObjects ++ allChildren)
  let allChildIds = map (^. qInfo.qId) layouts
  liftIO $ putStrLn ("Sheet ids: " ++ show allIds)
  liftIO $ putStrLn ("Child ids: " ++ show allChildIds)
  liftIO $ putStrLn "Done." >> hFlush stdout
--  liftIO $ getLine
  return ()


getAllChildren :: App -> GenericObject -> SDKM [GenericObject]
getAllChildren app objs = do
  allInfos <- getChildInfos objs
  let allIds = map (^. qId) allInfos
  children <- mapM (getObject app) allIds
  grandChildren <- mapM (getAllChildren app) children
  return (children ++ (concat grandChildren))

sheetListProps :: GenericObjectProperties
sheetListProps = fromAs $
  emptyAs & p_ "qInfo" .~ infoDef
          & p_ "qAppObjectListDef" .~ listDef
 where
  infoDef = emptyAs & p_ "qType" .~ "genericobject"
  listDef = emptyAs & p_ "qType" .~ "sheet"
                    & p_ "qData" .~ emptyAs
