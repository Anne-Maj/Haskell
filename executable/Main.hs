{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Main where

import Web.Scotty
import Data.Aeson (FromJSON, ToJSON) --typeclasses
import GHC.Generics --gør, at dataen kan laves om til noget andet
import qualified Data.Text.Lazy as L


main :: IO () --forventer en IO monad
main = do --do samler monader sammen til en ny monad
  putStrLn "Starting server at 4711..."
  scotty 4711 $ do --forventer en ScottyM monad
    get "/hello/:name" $ do
      name <- param "name"
      text $ L.pack ("Hello " ++ name ++ "!")
    get "/user" (json u1) --do behøves ikke her, da den samler flere monader, og her er kun én
      json u1
    post "/user" $ do
      fName <- jsonData :: ActionM User
      json fName

u1 :: User
u1 = User "Ib" "Ibsen"


data User = User
  { fName :: String
  , lName :: String
  } deriving (Show, Generic) --gør det muligt at vise User på skærmen

instance ToJSON User --implementerer, at user laves om til json
instance FromJSON User




