#!/bin/sh
test -f "$1" || exit
curl -s -F laxtype=yes -F parser=html5 -F level=error -F out=gnu -F doc=@$1 "http://validator.nu" |
sed 's,^.*":,'"$1:"','
