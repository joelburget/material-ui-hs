{-# LANGUAGE OverloadedStrings, LiberalTypeSynonyms, JavaScriptFFI, LambdaCase #-}

module Main where

import Control.Monad
import Data.Void

import GHCJS.Types
import GHCJS.Foreign
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

foreign import javascript "React.createElement(MaterialUI.LinkButton, $1, $2)" mui_linkButton :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import javascript "React.createElement(MaterialUI.FontIcon, $1, $2)" mui_fontIcon :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import javascript "React.createElement(MaterialUI.FontIcon, $1, $2)" mui_datePicker :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import javascript "React.createElement(MaterialUI.TextField, $1, $2)" mui_textField :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import javascript "React.createElement(MaterialUI.RadioButtonGroup, $1, $2)" mui_radioButtonGroup :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import javascript "React.createElement(MaterialUI.Tabs, $1, $2)" mui_tabs :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import javascript "React.createElement(MaterialUI.Tab, $1, $2)" mui_tab :: RawAttrs -> ReactArray -> IO ForeignNode

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

flatButton :: TermParent t => TermParentArg t -> t
flatButton = foreignParent mui_flatButton

raisedButton :: TermParent t => TermParentArg t -> t
raisedButton = foreignParent mui_raisedButton

radioButtonGroup_ :: TermParent t => TermParentArg t -> t
radioButtonGroup_ = foreignParent mui_radioButtonGroup

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

fontIcon_ :: [AttrOrHandler Void] -> Pure React'
fontIcon_ = foreignLeaf mui_fontIcon

datePicker_ :: [AttrOrHandler Void] -> Pure React'
datePicker_ = foreignLeaf mui_datePicker

textField_ :: [AttrOrHandler Void] -> Pure React'
textField_ = foreignLeaf mui_textField

tabs_ :: TermParent t => TermParentArg t -> t
tabs_ = foreignParent mui_tabs

tab_ :: TermParent t => TermParentArg t -> t
tab_ = foreignParent mui_tab

-- TODO add type alias for parent / leaf
-- TODO add things like button_' (for leaf button) (that's gross naming
-- though)
-- TODO think about using template haskell to import and define in one fell
-- swoop
-- TODO settle naming scheme

stringMe :: String -> JSString
stringMe = toJSString

buttonExamples :: () -> Pure React'
buttonExamples _ = div_ [ class_ "button-examples" ] $ do

    forM_ [ (flatButton, "flat"),
            (raisedButton, "raised") ] $ \(button, ty) -> do

        div_ [ class_ "button-example-group" ] $ do
            div_ [ class_ "button-example-container" ] $
                button [ label_ "Default" ] $ return ()
            div_ [ class_ "button-example-container" ] $
                button [ label_ "Primary", primary True ] $ return ()
            div_ [ class_ "button-example-container" ] $
                button [ label_ "Secondary", secondary True ] $ return ()
            div_ [ class_ "button-example-container" ] $
                button [ secondary True ] $ do
                    span_ [ class_ (stringMe $ "mui-" ++ ty ++ "-button-label example-image-button") ]
                        "Choose an Image"
                    input_ [ type_ "file", class_ "example-image-input" ]
            div_ [ class_ "button-example-container" ] $
                button [ linkButton_ True, href_ "https://github.com/callemall/material-ui", secondary True ] $ do
                    fontIcon_ [ class_ "muidocs-icon-custom-github example-flat-button-icon" ]
                    span_ [ class_ (stringMe $ "mui-" ++ ty ++ "-button-label example-icon-button-label") ] "Github"
            div_ [ class_ "button-example-container" ] $
                button [ label_ "Disabled", disabled True ] $ return ()

    div_ [ class_ "button-example-group" ] $ forM_
        [ []
        , [ mini True ]
        , [ disabled True ]
        , [ mini True, disabled True ]
        , [ secondary True ]
        , [ mini True, secondary True ] ] $ \attrs ->
            floatingActionButton
                (iconClassName "muidocs-icon-action-grade":attrs)

dateExamples :: () -> Pure React'
dateExamples _ = div_ $ do
    datePicker_ [ hintText "Portrait Dialog" ]
    datePicker_ [ hintText "Landscape Dialog", mode "landscape" ]

sliderExamples :: () -> Pure React'
sliderExamples _ = div_ $ do
    div_ [ class_ "slider-display" ] $ do
        -- Default
        slider [ name "slider1" ]

        -- With starting value
        slider [ name "slider2", defaultValueNum 0.5 ]
        slider [ name "slider3", defaultValueNum 1 ]

        -- Disabled with fixed value
        slider [ name "slider1", disabled True ]
        slider [ name "slider2", disabled True, value_ "0.5" ]
        slider [ name "slider3", disabled True, value_ "1" ]

checkboxExamples :: () -> Pure React'
checkboxExamples _ = div_ [ class_ "switches-example-group" ] $ do
    div_ [ class_ "switches-example-container" ] $
        h2_ [ class_ "mui-font-style-headline" ] "Checkbox"
    div_ [ class_ "switches-example-container" ] $
        checkbox [ name "checkboxName1", value_ "checkboxValue1", label_ "went for a run today" ]
    div_ [ class_ "switches-example-container" ] $
        checkbox [ name "checkboxName2", value_ "checkboxValue2", label_ "fed the dog" ]
    div_ [ class_ "switches-example-container" ] $
        checkbox [ name "checkboxName3", value_ "checkboxValue3", label_ "built a house on the moon" ]

toggleExamples :: () -> Pure React'
toggleExamples _ = div_ [ class_ "switches-example-group" ]$ do
    div_ [ class_ "switches-example-container" ] $
        h2_ [ class_ "mui-font-style-headline" ] "Toggle"
    div_ [ class_ "switches-example-container" ] $
        toggle [ name "toggleName1", value_ "toggleValue1", label_ "activate thrusters" ]
    div_ [ class_ "switches-example-container" ] $
            toggle [ name "toggleName2", value_ "toggleValue2", label_ "auto-pilot", defaultToggled True ]
    div_ [ class_ "switches-example-container" ] $
            toggle [ name "toggleName3", value_ "toggleValue3", label_ "initiate self-destruct sequence", disabled True ]

radioButtonExamples :: () -> Pure React'
radioButtonExamples _ = div_ [ class_ "switches-example-group" ] $ do
    div_ [ class_ "switches-example-container" ] $
        h2_ [ class_ "mui-font-style-headline" ] "Radio Buttons"
    radioButtonGroup_ [ name "shipSpeed", defaultSelected "not_light" ] $ do
        radioButton [ value_ "light", label_ "prepare for light speed" ]
        radioButton [ value_ "not_light", label_ "light speed too slow" ]
        radioButton [ value_ "ludicrous", label_ "go to ludicrous speed", disabled True ]

switchesExamples :: () -> Pure React'
switchesExamples _ = div_ [] $ do
    checkboxExamples ()
    toggleExamples ()
    radioButtonExamples ()

textFields :: () -> Pure React'
textFields _ = div_ [ class_ "text-field-example" ] $ do

    div_ [ class_ "text-field-example-group text-field-example-single-line" ] $ do
        textField_ [ hintText "Hint Text" ]
        br_ []
        textField_ [ hintText "Hint Text", defaultValueStr "Default Value" ]
        br_ []
        textField_ [ hintText "Hint Text" ]
        br_ []
        textField_ [ hintText "Hint Text" ]
        br_ []
        textField_ [ hintText "Hint Text (Multiline)", multiLine True ]
        br_ []
        textField_ [ hintText "Hint Text", defaultValueStr "abc" ]
        br_ []
        textField_ [ hintText "Hint Text", disabled True ]
        br_ []
        textField_ [ hintText "Hint Text", disabled True, defaultValueStr "Disabled With Value" ]

    div_ [ class_ "text-field-example-group" ] $ do
        textField_ [ hintText "Hint Text", floatingLabelText "Floating Label Text" ]
        br_ []
        textField_ [ hintText "Hint Text", defaultValueStr "Default Value", floatingLabelText "Floating Label Text" ]
        br_ []
        textField_ [ hintText "Hint Text", floatingLabelText "Floating Label Text" ]
        br_ []
        textField_ [ hintText "Hint Text", floatingLabelText "Floating Label Text" ]
        br_ []
        textField_ [ hintText "Hint Text (Multiline)", multiLine True, floatingLabelText "Floating Label Text" ]
        br_ []
        textField_ [ hintText "Hint Text", defaultValueStr "abc", floatingLabelText "Floating Label Text" ]
        br_ []
        textField_ [ hintText "Hint Text", disabled True, floatingLabelText "Floating Label Text" ]
        br_ []
        textField_ [ hintText "Hint Text", disabled True, defaultValueStr "Disabled With Value", floatingLabelText "Floating Label Text" ]

tabs :: () -> Pure React'
tabs () = div_ [ class_ "tabs-examples" ] $
    tabs_ [] $ do
        tab_ [ label_ "Item One" ] $
            div_ [ class_ "tab-template-container" ] $ do
                h2_ [ class_ "mui-font-style-headline" ]
                    "Tab One Template Example"
                p_ [] "This is an example of a tab template!"
                p_ [] "You can put any sort of HTML or react component in here."
        tab_ [ label_ "Item Two" ] $
            div_ [ class_ "tab-template-container" ] $ do
                h2_ [ class_ "mui-font-style-headline" ]
                    "Tab Two Template Example"
                p_ [] "This is another example of a tab template!"


-- leftNavExamples :: Pure React'
-- leftNavExamples = div_ [ class_ "left-nav-example" ] $ do
--     let menuItems =
--             [ menuItem{ itemRoute="get-started", itemText="Get Started" }
--             , menuItem{ itemRoute="css-framework", itemText="CSS Framework" }
--             , menuItem{ itemRoute="components", itemText="Components" }
--             -- , menuItem{ itemType=Link,
--             -- payload="https://github.com/callemall/material-ui",
--             -- itemText="Github" }
--             , menuItem{ itemText="Disabled", itemDisabled=True }
--             ]
--     raisedButton [ label_ "Toggle Docked Left Nav" ] $ return ()
--     raisedButton [ label_ "Show Hideable Left Nav" ] $ return ()
--     leftNav [ ref "dockedLeftNav", docked True, menuItems items ]
--     leftNav [ ref "leftNav", docked False, menuItems items ]


view :: () -> Pure React'
view _ = div_ [ class_ "all-examples" ] $ do
    buttonExamples ()
    dateExamples ()
    sliderExamples ()
    switchesExamples ()
    textFields ()
    tabs ()

view' :: () -> Pure React'
view' _ = div_ $ do
    raisedButton [ label_ "this. this is a button." ] $ return ()

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
        form_ $ do
            radioButton [ name "shipSpeed", value_ "light", label_ "prepare for light speed" ]
            radioButton [ name "shipSpeed", value_ "not_light", label_ "light speed too slow", defaultChecked True ]
            radioButton [ name "shipSpeed", value_ "ludicrous", label_ "go to ludicous speed" ]

    -- TODO why must one mui-toggle-wrap?
    div_ [ class_ "example-block" ] $ div_ [ class_ "mui-toggle-wrap" ] $ toggle []

    div_ $ do
        iconButton [ iconClassName "muidocs-icon-action-grade", tooltip "star" ]
        iconButton [ iconClassName "muidocs-icon-action-grade", tooltip "star", disabled True ]

    div_ [ class_ "button-display" ] $ do
        div_ [class_ "button-group" ] $ do
            flatButton [ label_ "Default" ] $ return ()
            flatButton [ label_ "Primary", primary True ] $ return ()
            flatButton [ label_ "Secondary", secondary True ] $ return ()
            flatButton [ label_ "Disabled", disabled True ] $ return ()

        div_ [class_ "button-group" ] $ do
            raisedButton [ label_ "Default" ] $ return ()
            raisedButton [ label_ "Primary", primary True ] $ return ()
            raisedButton [ label_ "Secondary", secondary True ] $ return ()
            raisedButton [ label_ "Disabled", disabled True ] $ return ()

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
