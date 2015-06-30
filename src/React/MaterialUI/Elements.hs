{-# LANGUAGE LiberalTypeSynonyms #-}
module React.MaterialUI.Elements where

import React hiding (label_)
import React.MaterialUI.Imports

leftNav :: [AttrOrHandler s] -> ReactNode s
leftNav attrs = foreignLeaf mui_leftNav attrs ()

dropDownMenu :: [AttrOrHandler s] -> ReactNode s
dropDownMenu attrs = foreignLeaf mui_dropDownMenu attrs ()

snackbar :: [AttrOrHandler s] -> ReactNode s
snackbar attrs = foreignLeaf mui_snackbar attrs ()

paper :: [AttrOrHandler s] -> ReactNode s
paper attrs = foreignLeaf mui_paper attrs ()

iconButton :: [AttrOrHandler s] -> ReactNode s
iconButton attrs = foreignLeaf mui_iconButton attrs ()

flatButton :: [AttrOrHandler s] -> ReactNode s
flatButton attrs = foreignLeaf mui_flatButton attrs ()

raisedButton :: [AttrOrHandler s] -> ReactNode s
raisedButton attrs = foreignLeaf mui_raisedButton attrs ()

-- radioButtonGroup_ :: [AttrOrHandler sig] -> ReactNode sig -> ReactNode sig
-- radioButtonGroup_ = classParent mui_radioButtonGroup

floatingActionButton :: [AttrOrHandler s] -> ReactNode s
floatingActionButton attrs = foreignLeaf mui_floatingActionButton attrs ()

slider :: [AttrOrHandler s] -> ReactNode s
slider attrs = foreignLeaf mui_slider attrs ()

checkbox :: [AttrOrHandler s] -> ReactNode s
checkbox attrs = foreignLeaf mui_checkbox attrs ()

radioButton :: [AttrOrHandler s] -> ReactNode s
radioButton attrs = foreignLeaf mui_radioButton attrs ()

toggle :: [AttrOrHandler s] -> ReactNode s
toggle attrs = foreignLeaf mui_toggle attrs ()

fontIcon_ :: [AttrOrHandler s] -> ReactNode s
fontIcon_ attrs = foreignLeaf mui_fontIcon attrs ()

datePicker_ :: [AttrOrHandler s] -> ReactNode s
datePicker_ attrs = foreignLeaf mui_datePicker attrs ()

textField_ :: [AttrOrHandler s] -> ReactNode s
textField_ attrs = foreignLeaf mui_textField attrs ()

-- tabs_ :: [AttrOrHandler sig] -> ReactNode sig -> ReactNode sig
-- tabs_ = classParent mui_tabs

-- tab_ :: [AttrOrHandler sig] -> ReactNode sig -> ReactNode sig
-- tab_ = classParent mui_tab
