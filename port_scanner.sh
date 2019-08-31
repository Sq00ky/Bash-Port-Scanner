#!/bin/bash
#Variables
empty=""
rm /tmp/SpookyScan
#Args
while [ "$1" != "" ]; do
	case $1 in
	-i | --ip )	shift;
			ip=$1;
	esac;
	shift;
done
#Checking if the -i is empty
if [[ $ip == $empty ]]; then
	echo "Please specify an IP address with -i"
	exit
fi
for i in {1..80}; do
	( echo >/dev/tcp/$ip/$i) > /dev/null 2>&1 && echo "Port" $i "is open" >> /tmp/SpookyScan;
done
cat /tmp/SpookyScan | grep "is open"
rm /tmp/SpookyScan
