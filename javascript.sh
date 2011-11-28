#!/bin/sh
test -f "$1" || exit
IFS=,
curl -s -F js=@$1 http://jslint.dabase.com/jshint.php | while read -r line col msg
do
	test "$msg" || continue
	echo $1:$(echo $line | sed 's,.*line ,,'):$(echo $col | sed 's,.*col ,,'):$msg
done
