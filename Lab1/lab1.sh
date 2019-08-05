#!/bin/bash
find . -type f -exec du -a '{}' + 2>/dev/null| sort -nr |head -n10 > new
cut -f2 >new
while read -r f 
do k=`stat $f| grep 'Modify'|cut -d ' ' -f2|cut -d '-' -f 1`
echo $k 
if [ $k -lt '2018' ]
#	rm $f
	echo "Less"
fi
done<new2         