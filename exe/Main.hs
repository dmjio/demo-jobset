{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Main where

import Servant.Server
import Servant.API
import Data.Aeson
import Network.Wai.Handler.Warp
import Data.Proxy

main :: IO ()
main = do
  putStrLn "running on 3000"
  run 3000 $ serve (Proxy :: Proxy App) $ pure (Foo "foo")

type App = Get '[JSON] Foo

newtype Foo = Foo String
  deriving (ToJSON, FromJSON)


