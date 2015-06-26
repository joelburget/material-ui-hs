{-# LANGUAGE OverloadedStrings #-}
module React.MaterialUI.Attrs where

import Data.Aeson
import qualified Data.HashMap.Strict as H
import Data.Text (Text)
import qualified Data.Vector as V
import React
import React.GHCJS

label_ :: Text -> AttrOrHandler signal
label_ = mkStaticAttr "label"

menuItems :: [(Text, Text)] -> AttrOrHandler signal
menuItems items = mkStaticAttr "menuItems" preEncoded where
    preEncoded = Array (V.fromList objects)
    encodeObject (k, v) = Object $ H.fromList
        [ ("payload", String k)
        , ("text", String v)
        ]
    objects = map encodeObject items

message :: Text -> AttrOrHandler signal
message = mkStaticAttr "message"

action :: Text -> AttrOrHandler signal
action = mkStaticAttr "action"

docked :: Bool -> AttrOrHandler signal
docked = mkStaticAttr "docked"

openOnMount :: Bool -> AttrOrHandler signal
openOnMount = mkStaticAttr "openOnMount"

data ZDepth
    = Z1
    | Z2
    | Z3
    | Z4
    | Z5


instance ToJSON ZDepth where
    toJSON Z1 = Number 1
    toJSON Z2 = Number 2
    toJSON Z3 = Number 3
    toJSON Z4 = Number 4
    toJSON Z5 = Number 5


zDepth :: ZDepth -> AttrOrHandler signal
zDepth = mkStaticAttr "zDepth"

rounded :: Bool -> AttrOrHandler signal
rounded = mkStaticAttr "rounded"

disabled :: Bool -> AttrOrHandler signal
disabled = mkStaticAttr "disabled"

circle :: Bool -> AttrOrHandler signal
circle = mkStaticAttr "circle"

primary :: Bool -> AttrOrHandler signal
primary = mkStaticAttr "primary"

secondary :: Bool -> AttrOrHandler signal
secondary = mkStaticAttr "secondary"

mini :: Bool -> AttrOrHandler signal
mini = mkStaticAttr "mini"

icon :: Text -> AttrOrHandler signal
icon = mkStaticAttr "icon"

iconClassName :: Text -> AttrOrHandler signal
iconClassName = mkStaticAttr "iconClassName"

tooltip :: Text -> AttrOrHandler signal
tooltip = mkStaticAttr "tooltip"

name_ :: Text -> AttrOrHandler signal
name_ = mkStaticAttr "name"

defaultValueNum :: Double -> AttrOrHandler signal
defaultValueNum = mkStaticAttr "defaultValue"

defaultValueStr :: Text -> AttrOrHandler signal
defaultValueStr = mkStaticAttr "defaultValue"

defaultChecked :: Bool -> AttrOrHandler signal
defaultChecked = mkStaticAttr "defaultChecked"

defaultToggled :: Bool -> AttrOrHandler signal
defaultToggled = mkStaticAttr "defaultToggled"

defaultSelected :: Text -> AttrOrHandler signal
defaultSelected = mkStaticAttr "defaultSelected"

linkButton_ :: Bool -> AttrOrHandler signal
linkButton_ = mkStaticAttr "linkButton"

hintText :: Text -> AttrOrHandler signal
hintText = mkStaticAttr "hintText"

mode :: Text -> AttrOrHandler signal
mode = mkStaticAttr "mode"

multiLine :: Bool -> AttrOrHandler signal
multiLine = mkStaticAttr "multiLine"

floatingLabelText :: Text -> AttrOrHandler signal
floatingLabelText = mkStaticAttr "floatingLabelText"

