#!/bin/bash

killall -q polybar

polybar --reload -c $HOME/.config/polybar/config.ini modarch &
