#!/bin/bash
#Variables
empty=""
rm /tmp/SpookyScan > /dev/null 2>&1
touch /tmp/SpookyScan
#Args
while [ "$1" != "" ]; do
	case "$1" in
		-i | --ip )		ip="$2";	shift;;
		-p | --ports )		ports="$2";	shift;;
	esac
	shift
done
#Checking if the -i is empty
if [[ $ip == $empty ]]; then
	echo "Please specify an IP address with -i"
	exit
fi
if [[ $ports == $empty ]]; then
	echo "Please specify the max port range -p"
	exit
fi
for i in $(seq 1 $ports); do
	( echo > /dev/tcp/$ip/$i) > /dev/null 2>&1 && echo "Port" $i "is open";
done
