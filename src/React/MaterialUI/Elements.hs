{-# LANGUAGE LiberalTypeSynonyms #-}
module React.MaterialUI.Elements where

import Data.Void
import React hiding (label_)
import React.MaterialUI.Imports

leftNav :: [AttrOrHandler Void] -> ReactNode Void
leftNav attrs = foreignLeaf mui_leftNav attrs ()

dropDownMenu :: [AttrOrHandler Void] -> ReactNode Void
dropDownMenu attrs = foreignLeaf mui_dropDownMenu attrs ()

snackbar :: [AttrOrHandler Void] -> ReactNode Void
snackbar attrs = foreignLeaf mui_snackbar attrs ()

paper :: [AttrOrHandler Void] -> ReactNode Void
paper attrs = foreignLeaf mui_paper attrs ()

iconButton :: [AttrOrHandler Void] -> ReactNode Void
iconButton attrs = foreignLeaf mui_iconButton attrs ()

flatButton :: [AttrOrHandler Void] -> ReactNode Void
flatButton attrs = foreignLeaf mui_flatButton attrs ()

raisedButton :: [AttrOrHandler Void] -> ReactNode Void
raisedButton attrs = foreignLeaf mui_raisedButton attrs ()

-- radioButtonGroup_ :: [AttrOrHandler sig] -> ReactNode sig -> ReactNode sig
-- radioButtonGroup_ = classParent mui_radioButtonGroup

floatingActionButton :: [AttrOrHandler Void] -> ReactNode Void
floatingActionButton attrs = foreignLeaf mui_floatingActionButton attrs ()

slider :: [AttrOrHandler Void] -> ReactNode Void
slider attrs = foreignLeaf mui_slider attrs ()

checkbox :: [AttrOrHandler Void] -> ReactNode Void
checkbox attrs = foreignLeaf mui_checkbox attrs ()

radioButton :: [AttrOrHandler Void] -> ReactNode Void
radioButton attrs = foreignLeaf mui_radioButton attrs ()

toggle :: [AttrOrHandler Void] -> ReactNode Void
toggle attrs = foreignLeaf mui_toggle attrs ()

fontIcon_ :: [AttrOrHandler Void] -> ReactNode Void
fontIcon_ attrs = foreignLeaf mui_fontIcon attrs ()

datePicker_ :: [AttrOrHandler Void] -> ReactNode Void
datePicker_ attrs = foreignLeaf mui_datePicker attrs ()

textField_ :: [AttrOrHandler Void] -> ReactNode Void
textField_ attrs = foreignLeaf mui_textField attrs ()

-- tabs_ :: [AttrOrHandler sig] -> ReactNode sig -> ReactNode sig
-- tabs_ = classParent mui_tabs

-- tab_ :: [AttrOrHandler sig] -> ReactNode sig -> ReactNode sig
-- tab_ = classParent mui_tab
