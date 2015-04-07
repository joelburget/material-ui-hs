{-# LANGUAGE JavaScriptFFI #-}
module React.MaterialUI.Imports where

import React
-- import GHCJS.Foreign

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

