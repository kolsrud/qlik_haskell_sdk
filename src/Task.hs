module Task
( Task
, newTask
, fromError, fromResult
, awaitResult, awaitResult_
, tryAwaitResult
, writeTask
, (>->)
) where

import Control.Monad.IO.Class
import Control.Concurrent.MVar

data Task a = Task {
--  threadId :: ThreadId,
  taskMVar :: MVar (Either String a)
}

(>->) :: MonadIO m => m (Task a) -> (a -> m (Task b)) -> m (Task b)
t0 >-> f = do r0 <- t0 >>= awaitResult_
              case r0 of
                Left msg -> fromError msg
                Right x  -> f x

fromError :: MonadIO m => String -> m (Task a)
fromError = fromResult.Left

fromValue :: MonadIO m => a -> m (Task a)
fromValue = fromResult.Right

fromResult :: MonadIO m => Either String a -> m (Task a)
fromResult x = do t <- newTask
                  writeTask t x
                  return t

newTask :: MonadIO m => m (Task a)
newTask = do
  mvar <- liftIO $ newEmptyMVar
  return (Task { taskMVar = mvar })

writeTask :: MonadIO m => Task a -> (Either String a) -> m ()
writeTask t x = let mvar = taskMVar t
                 in liftIO $ putMVar mvar x

awaitResult_ :: MonadIO m => Task a -> m (Either String a)
awaitResult_ = liftIO.takeMVar.taskMVar

awaitResult :: MonadIO m => Task a -> m a
awaitResult task = fmap (either error id) (awaitResult_ task)

tryAwaitResult :: MonadIO m => m (Task a) -> (a -> m b) -> (String -> m b) -> m b
tryAwaitResult m onSuccess onError = do
  e_result <- m >>= awaitResult_
  case e_result of
    Left str -> onError str
    Right x  -> onSuccess x
