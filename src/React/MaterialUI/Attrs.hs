{-# LANGUAGE OverloadedStrings #-}
module React.MaterialUI.Attrs where

import React
import GHCJS.Types

label_ :: JSString -> AttrOrHandler signal
label_ = mkStaticAttr "label" Str

menuItems :: [(JSString, JSString)] -> AttrOrHandler signal
menuItems = mkStaticAttr "menuItems" $ Arr . map
    (\(k, v) -> Dict [("payload", Str k), ("text", Str v)])

message :: JSString -> AttrOrHandler signal
message = mkStaticAttr "message" Str

action :: JSString -> AttrOrHandler signal
action = mkStaticAttr "action" Str

docked :: Bool -> AttrOrHandler signal
docked = mkStaticAttr "docked" Bool

openOnMount :: Bool -> AttrOrHandler signal
openOnMount = mkStaticAttr "openOnMount" Bool

data ZDepth
    = Z1
    | Z2
    | Z3
    | Z4
    | Z5

zdIx :: ZDepth -> Double
zdIx Z1 = 1
zdIx Z2 = 2
zdIx Z3 = 3
zdIx Z4 = 4
zdIx Z5 = 5

zDepth :: ZDepth -> AttrOrHandler signal
zDepth = mkStaticAttr "zDepth" (Num . zdIx)

rounded :: Bool -> AttrOrHandler signal
rounded = mkStaticAttr "rounded" Bool

disabled :: Bool -> AttrOrHandler signal
disabled = mkStaticAttr "disabled" Bool

circle :: Bool -> AttrOrHandler signal
circle = mkStaticAttr "circle" Bool

primary :: Bool -> AttrOrHandler signal
primary = mkStaticAttr "primary" Bool

secondary :: Bool -> AttrOrHandler signal
secondary = mkStaticAttr "secondary" Bool

mini :: Bool -> AttrOrHandler signal
mini = mkStaticAttr "mini" Bool

icon :: JSString -> AttrOrHandler signal
icon = mkStaticAttr "icon" Str

iconClassName :: JSString -> AttrOrHandler signal
iconClassName = mkStaticAttr "iconClassName" Str

tooltip :: JSString -> AttrOrHandler signal
tooltip = mkStaticAttr "tooltip" Str

name :: JSString -> AttrOrHandler signal
name = mkStaticAttr "name" Str

defaultValueNum :: Double -> AttrOrHandler signal
defaultValueNum = mkStaticAttr "defaultValue" Num

defaultValueStr :: JSString -> AttrOrHandler signal
defaultValueStr = mkStaticAttr "defaultValue" Str

defaultChecked :: Bool -> AttrOrHandler signal
defaultChecked = mkStaticAttr "defaultChecked" Bool

defaultToggled :: Bool -> AttrOrHandler signal
defaultToggled = mkStaticAttr "defaultToggled" Bool

defaultSelected :: JSString -> AttrOrHandler signal
defaultSelected = mkStaticAttr "defaultSelected" Str

linkButton_ :: Bool -> AttrOrHandler signal
linkButton_ = mkStaticAttr "linkButton" Bool

hintText :: JSString -> AttrOrHandler signal
hintText = mkStaticAttr "hintText" Str

mode :: JSString -> AttrOrHandler signal
mode = mkStaticAttr "mode" Str

multiLine :: Bool -> AttrOrHandler signal
multiLine = mkStaticAttr "multiLine" Bool

floatingLabelText :: JSString -> AttrOrHandler signal
floatingLabelText = mkStaticAttr "floatingLabelText" Str

