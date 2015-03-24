{-# LANGUAGE OverloadedStrings, LiberalTypeSynonyms, JavaScriptFFI, LambdaCase #-}

module Main where

import Data.Void

import GHCJS.Types
import GHCJS.DOM
import GHCJS.DOM.Document

import React hiding (label_)

foreign import javascript "React.createElement(MaterialUI.LeftNav, $1, $2)" mui_leftNav :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import javascript "React.createElement(MaterialUI.DropDownMenu, $1, $2)" mui_dropDownMenu :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import javascript "React.createElement(MaterialUI.Snackbar, $1, $2)" mui_snackbar :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import javascript "React.createElement(MaterialUI.Paper, $1, $2)" mui_paper :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import javascript "React.createElement(MaterialUI.IconButton, $1, $2)" mui_iconButton :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import javascript "React.createElement(MaterialUI.FlatButton, $1, $2)" mui_flatButton :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import javascript "React.createElement(MaterialUI.RaisedButton, $1, $2)" mui_raisedButton :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import javascript "React.createElement(MaterialUI.FloatingActionButton, $1, $2)" mui_floatingActionButton :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import javascript "React.createElement(MaterialUI.Slider, $1, $2)" mui_slider :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import javascript "React.createElement(MaterialUI.Checkbox, $1, $2)" mui_checkbox :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import javascript "React.createElement(MaterialUI.RadioButton, $1, $2)" mui_radioButton :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import javascript "React.createElement(MaterialUI.Toggle, $1, $2)" mui_toggle :: RawAttrs -> ReactArray -> IO ForeignNode

-- foreign export javascript "myLabel" label_ :: JSString -> AttrOrHandler signal

-- attributes

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

-- TODO this could be anything
defaultValue :: Double -> AttrOrHandler signal
defaultValue = mkStaticAttr "defaultValue" Num

defaultChecked :: Bool -> AttrOrHandler signal
defaultChecked = mkStaticAttr "defaultChecked" Bool

-- elements

leftNav :: [AttrOrHandler Void] -> Pure React'
leftNav = foreignLeaf mui_leftNav

dropDownMenu :: [AttrOrHandler Void] -> Pure React'
dropDownMenu = foreignLeaf mui_dropDownMenu

snackbar :: [AttrOrHandler Void] -> Pure React'
snackbar = foreignLeaf mui_snackbar

paper :: [AttrOrHandler Void] -> Pure React'
paper = foreignLeaf mui_paper

iconButton :: [AttrOrHandler Void] -> Pure React'
iconButton = foreignLeaf mui_iconButton

flatButton :: [AttrOrHandler Void] -> Pure React'
flatButton = foreignLeaf mui_flatButton

raisedButton :: [AttrOrHandler Void] -> Pure React'
raisedButton = foreignLeaf mui_raisedButton

floatingActionButton :: [AttrOrHandler Void] -> Pure React'
floatingActionButton = foreignLeaf mui_floatingActionButton

slider :: [AttrOrHandler Void] -> Pure React'
slider = foreignLeaf mui_slider

checkbox :: [AttrOrHandler Void] -> Pure React'
checkbox = foreignLeaf mui_checkbox

radioButton :: [AttrOrHandler Void] -> Pure React'
radioButton = foreignLeaf mui_radioButton

toggle :: [AttrOrHandler Void] -> Pure React'
toggle = foreignLeaf mui_toggle

view :: () -> Pure React'
view _ = div_ $ do
    raisedButton [ label_ "this. this is a button." ]

    dropDownMenu [ menuItems
            [ ( "1", "Never" )
            , ( "2", "Every Night" )
            , ( "3", "Weeknights" )
            , ( "4", "Weekends" )
            , ( "5", "Weekly" )
            ]
        ]

    snackbar [ message "Time for a snack", action "dismiss", openOnMount True ]
    -- leftNav [ menuItems [ ("1", "hello"), ("2", "world") ] ]

    div_ [ class_ "example-block" ] $ do
        form_ [ class_ "checkbox-container" ] $ do
            checkbox [ name "checkboxName", value_ "checkboxValue1" ]
            checkbox [ name "checkboxName", value_ "checkboxValue2" ]
            checkbox [ name "checkboxName", value_ "checkboxValue3" ]

    div_ [ class_ "example-block" ] $ do
        form_ $ do
            radioButton [ name "shipSpeed", value_ "light", label_ "prepare for light speed" ]
            radioButton [ name "shipSpeed", value_ "not_light", label_ "light speed too slow", defaultChecked True ]
            radioButton [ name "shipSpeed", value_ "ludicrous", label_ "go to ludicous speed" ]

    -- TODO why must one mui-toggle-wrap?
    div_ [ class_ "example-block" ] $ div_ [ class_ "mui-toggle-wrap" ] $ toggle []

    div_ [ class_ "slider-display" ] $ do
        -- Default
        slider [ name "slider1" ]

        -- With starting value
        slider [ name "slider2", defaultValue 0.5 ]
        slider [ name "slider3", defaultValue 1 ]

        -- Disabled with fixed value
        slider [ name "slider1", disabled True ]
        slider [ name "slider2", disabled True, value_ "0.5" ]
        slider [ name "slider3", disabled True, value_ "1" ]

    div_ $ do
        iconButton [ iconClassName "muidocs-icon-action-grade", tooltip "star" ]
        iconButton [ iconClassName "muidocs-icon-action-grade", tooltip "star", disabled True ]

    div_ [ class_ "button-display" ] $ do
        div_ [class_ "button-group" ] $ do
            flatButton [ label_ "Default" ]
            flatButton [ label_ "Primary", primary True ]
            flatButton [ label_ "Secondary", secondary True ]
            flatButton [ label_ "Disabled", disabled True ]

        div_ [class_ "button-group" ] $ do
            raisedButton [ label_ "Default" ]
            raisedButton [ label_ "Primary", primary True ]
            raisedButton [ label_ "Secondary", secondary True ]
            raisedButton [ label_ "Disabled", disabled True ]

        div_ [class_ "button-group" ] $ do
            floatingActionButton [ iconClassName "muidocs-icon-action-grade" ]
            floatingActionButton [ iconClassName "muidocs-icon-action-grade", mini True ]
            floatingActionButton [ iconClassName "muidocs-icon-action-grade", disabled True ]
            floatingActionButton [ iconClassName "muidocs-icon-action-grade", mini True, disabled True ]
            floatingActionButton [ iconClassName "muidocs-icon-action-grade", secondary True ]
            floatingActionButton [ iconClassName "muidocs-icon-action-grade", mini True, secondary True ]

    div_ [ class_ "paper-examples" ] $ do

        div_ [ class_ "paper-group" ] $ do
            paper [ zDepth Z1 ]
            paper [ zDepth Z2 ]
            paper [ zDepth Z3 ]
            paper [ zDepth Z4 ]
            paper [ zDepth Z5 ]

        div_ [ class_ "paper-group" ] $ do
            paper [ zDepth Z1, rounded False ]
            paper [ zDepth Z2, rounded False ]
            paper [ zDepth Z3, rounded False ]
            paper [ zDepth Z4, rounded False ]
            paper [ zDepth Z5, rounded False ]

        div_ [ class_ "paper-group" ] $ do
            paper [ zDepth Z1, circle True ]
            paper [ zDepth Z2, circle True ]
            paper [ zDepth Z3, circle True ]
            paper [ zDepth Z4, circle True ]
            paper [ zDepth Z5, circle True ]

transition = undefined

simpleClass :: IO (Pure ReactClass)
simpleClass = createClass view transition () () []

main :: IO ()
main = do
    Just doc <- currentDocument
    Just elem <- documentGetElementById doc ("inject" :: JSString)
    render elem =<< simpleClass
    return ()
