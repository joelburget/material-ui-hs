{-# LANGUAGE OverloadedStrings, LiberalTypeSynonyms, JavaScriptFFI, LambdaCase #-}

module Main where

import Control.Monad
import Data.Void

import GHCJS.Types
import GHCJS.Foreign
import GHCJS.DOM
import GHCJS.DOM.Document

import React hiding (label_)
import React.MaterialUI

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
