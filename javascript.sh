#!/bin/sh
test -f "$1" || exit
curl -s -F js=@$1 http://jslint.dabase.com/ |
sed 's,^,'"$1:"','
