#!/usr/bin/env sh
COLORS=" -nb #303030 -nf khaki -sb #CCFFAA -sf #303030"
DMENU="dmenu -i"
wmctrl -a `wmctrl -l|grep "Uzbl browser" | cut -d ' ' -f 5- |  $DMENU $COLORS -l 5`
