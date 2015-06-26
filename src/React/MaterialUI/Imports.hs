{-# LANGUAGE CPP #-}

#ifdef __GHCJS__
{-# LANGUAGE JavaScriptFFI #-}
#endif

module React.MaterialUI.Imports where

import React
import React.GHCJS

#ifdef __GHCJS__

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

#else

mui_leftNav, mui_dropDownMenu, mui_snackbar, mui_paper, mui_iconButton, mui_flatButton, mui_raisedButton, mui_floatingActionButton, mui_slider, mui_checkbox, mui_radioButton, mui_toggle, mui_linkButton, mui_fontIcon, mui_datePicker, mui_textField, mui_radioButtonGroup, mui_tabs, mui_tab, mui_theme :: JSAny

mui_leftNav = undefined
mui_dropDownMenu = undefined
mui_snackbar = undefined
mui_paper = undefined
mui_iconButton = undefined
mui_flatButton = undefined
mui_raisedButton = undefined
mui_floatingActionButton = undefined
mui_slider = undefined
mui_checkbox = undefined
mui_radioButton = undefined
mui_toggle = undefined
mui_linkButton = undefined
mui_fontIcon = undefined
mui_datePicker = undefined
mui_textField = undefined
mui_radioButtonGroup = undefined
mui_tabs = undefined
mui_tab = undefined
mui_theme = undefined

#endif
