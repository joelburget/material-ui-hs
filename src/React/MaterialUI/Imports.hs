{-# LANGUAGE JavaScriptFFI #-}
module React.MaterialUI.Imports where

import React
-- import GHCJS.Foreign

foreign import javascript "MaterialUI.LeftNav"
    mui_leftNav :: JSAny

foreign import javascript "MaterialUI.DropDownMenu"
    mui_dropDownMenu :: JSAny

foreign import javascript "MaterialUI.Snackbar"
    mui_snackbar :: JSAny

foreign import javascript "MaterialUI.Paper"
    mui_paper :: JSAny

foreign import javascript "MaterialUI.IconButton"
    mui_iconButton :: JSAny

foreign import javascript "MaterialUI.FlatButton"
    mui_flatButton :: JSAny

foreign import javascript "MaterialUI.RaisedButton"
    mui_raisedButton :: JSAny

foreign import javascript "MaterialUI.FloatingActionButton"
    mui_floatingActionButton :: JSAny

foreign import javascript "MaterialUI.Slider"
    mui_slider :: JSAny

foreign import javascript "MaterialUI.Checkbox"
    mui_checkbox :: JSAny

foreign import javascript "MaterialUI.RadioButton"
    mui_radioButton :: JSAny

foreign import javascript "MaterialUI.Toggle"
    mui_toggle :: JSAny

foreign import javascript "MaterialUI.LinkButton"
    mui_linkButton :: JSAny

foreign import javascript "MaterialUI.FontIcon"
    mui_fontIcon :: JSAny

foreign import javascript "MaterialUI.FontIcon"
    mui_datePicker :: JSAny

foreign import javascript "MaterialUI.TextField"
    mui_textField :: JSAny

foreign import javascript "MaterialUI.RadioButtonGroup"
    mui_radioButtonGroup :: JSAny

foreign import javascript "MaterialUI.Tabs"
    mui_tabs :: JSAny

foreign import javascript "MaterialUI.Tab"
    mui_tab :: JSAny

foreign import javascript "MaterialUI.Styles.ThemeManager().getCurrentTheme()"
    mui_theme :: JSAny
