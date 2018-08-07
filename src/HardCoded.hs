module HardCoded where

import AbstractStructure

newtype ValueExpr = ValueExpr AbstractStructure
newtype StringExpr = StringExpr AbstractStructure

instance AbstractStructureContainer ValueExpr where
  toAs (ValueExpr as) = as
  fromAs as = ValueExpr as

instance AbstractStructureContainer StringExpr where
  toAs (StringExpr as) = as
  fromAs as = StringExpr as

instance ValueType ValueExpr where
  toValue (ValueExpr as) = toValue as
  fromValue as = ValueExpr (fromValue as)

instance ValueType StringExpr where
  toValue (StringExpr as) = toValue as
  fromValue as = StringExpr (fromValue as)
