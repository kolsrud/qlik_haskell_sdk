module QixTypes where

import AbstractStructure

newtype GenericObjectLayout = GenericObjectLayout AbstractStructure
newtype GenericObjectProperties = GenericObjectProperties AbstractStructure
newtype NxMetaDef = NxMetaDef AbstractStructure

-- class AbstractStructureContainer a where
--   toAs :: a -> AbstractStructure

instance AbstractStructureContainer GenericObjectLayout where
  toAs (GenericObjectLayout as) = as

instance AbstractStructureContainer GenericObjectProperties where
  toAs (GenericObjectProperties as) = as

instance AbstractStructureContainer NxMetaDef where
  toAs (NxMetaDef as) = as

getQExtendsId :: AbstractStructureContainer a => a -> String
getQExtendsId asc = maybe "" id (asGetC "qExtendsId" (toAs asc))

getQInfo :: AbstractStructureContainer a => a -> NxMetaDef
getQInfo asc = NxMetaDef $ maybe emptyAs id (asGetC "qInfo" (toAs asc))

class PropQExtendsId a where
  qExtendsId :: a -> String

class PropQInfo a where
  qInfo :: a -> NxMetaDef

instance PropQInfo GenericObjectLayout where
  qInfo = getQInfo

instance PropQExtendsId GenericObjectLayout where
  qExtendsId = getQExtendsId

instance PropQExtendsId GenericObjectProperties where
  qExtendsId = getQExtendsId

