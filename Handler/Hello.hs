{-# LANGUAGE OverloadedStrings, QuasiQuotes, TemplateHaskell, TypeFamilies #-}
module Handler.Hello where
import Import
import Yesod.Form.Bootstrap3 (BootstrapFormLayout (..), renderBootstrap3,
                                  withSmallInput)
import Text.Julius (RawJS (..))

data Hello = Hello

mkYesod "Hello" [parseRoutes|
/ HelloR GET
|]

instance Yesod Hello

getHelloR :: Handler Html
getHelloR = defaultLayout [whamlet|
  Hello Worldio!
|]

--main :: IO ()
--main = warp 3001 Hello

