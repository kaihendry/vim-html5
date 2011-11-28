#!/bin/sh
test -f "$1" || exit
curl -s -F js=@$1 http://jslint.dabase.com/jshint.php | sed 's,^/tmp/tmp.*:,'"$1:"',' | sed '/^$/d' | sed '/.*error/d'
