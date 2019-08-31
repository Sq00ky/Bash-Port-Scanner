#!/bin/bash
#Variables
empty=""
#Args
while [ "$1" != "" ]; do
        case $1 in
        -i | --ip )     shift;
                        ip=$1;
        esac;
        shift;
done
#Checking if the -i is empty
if [[ $ip == $empty ]]; then
        echo "Please specify an IP address with -i"
        exit
fi
#
for i in {1..80}; do
        telnet $ip $i;
done
