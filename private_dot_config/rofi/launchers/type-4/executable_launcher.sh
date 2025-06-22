#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)
#
## Available Styles
#
## style-1     style-2     style-3     style-4     style-5
## style-6     style-7     style-8     style-9     style-10

dir="$HOME/.config/rofi/launchers/type-4"
theme='style-1'

## Run
if [ $# -eq 0 ]
  then
    MODE='drun'
else
    MODE=$1
fi

rofi \
    -show $MODE \
    -theme ${dir}/${theme}.rasi
