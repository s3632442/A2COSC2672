#!/bin/bash 
# Basic for loop 

echo $# iterations

i=$#
h=$1
l=$1

for i in $* ; do 

	echo value passed in is $1

	if [ "$1" -gt "$h" ]; then h=$1;
	echo high update "$h"
fi

if [ "$1" -lt "$l" ]; then l="$1";
	echo low update "$l"
fi

	shift

done

echo highest number was "$h"
echo lowest number was "$l"

