#!/usr/bin/env sh

##
## list bookmarklet scripts in directory and execute selected 
 ##


dir=$XDG_DATA_HOME/uzbl/scripts/marklets/

[ -r "$dir" ] || exit

COLORS=" -nb #303030 -nf khaki -sb #CCFFAA -sf #303030"

#DMENU="dmenu -i -xs -rs -l 10" # vertical patch
 DMENU="dmenu -i"

goto=`ls $dir | $DMENU $COLORS`

#[ -n "$goto" ] && echo "uri $goto" > $4
[ -n "$goto" ] && echo "script '${dir}${goto}'" | socat - unix-connect:$5
 
