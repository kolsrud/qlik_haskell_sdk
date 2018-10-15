{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE TypeSynonymInstances   #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
module GenericDerivedDefinition where

import Text.JSON
import Control.Lens
import AbstractStructure
import HardCoded
import Task
import SDKMonad
import SDKBase
import PropClasses
import ModelEngine
instance QixClass GenericDerivedDefinition where
  getHandle (GenericDerivedDefinition (QixObject h _)) = h

