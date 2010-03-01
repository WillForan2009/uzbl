#!/usr/bin/env sh
marklet_dir=$XDG_DATA_HOME/uzbl/scripts/marklets/

if [ -z "$(echo $8 | grep javascript)" ]
then
     zenity --error --text="Probably not a bookmarklet (no javascript:)"
    exit
fi

entry=`zenity --entry --text="Bookmarklet Name" --entry-text=""`
echo $8 | \
  sed 's/^javascript://g' | \
   python -c 'import urllib, sys; print urllib.unquote(sys.stdin.read())' > ${marklet_dir}${entry}.js

#echo -e "-------\n$@\n-------\n$8\n-------------"
