{-# LANGUAGE LiberalTypeSynonyms #-}
module React.MaterialUI.Elements where

import Data.Void
import React hiding (label_)
import React.MaterialUI.Imports

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
