#!/bin/bash

killall -q polybar # Kill any already running instances of polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar phil & # Run basic config in ~/.config/polybar/config with the bar name specified
