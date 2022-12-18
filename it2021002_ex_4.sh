#!/bin/bash

x='^[0-9]+$'

if [ "$1" == "incr" ];
then
   shift 1
    for var in "$@"
    do
	    if ! [[ $var =~ $x ]]
	    then
         echo "All arguements must be numbers."
		 exit 1
	    fi
    done
	for var in "$@"
	do
		echo "$var"
	done | sort -n
elif [ "$1" == "dec" ];
then
    shift 1
    for var in "$@"
    do
	    if ! [[ $var =~ $x ]]
	    then
         echo "All arguements must be numbers."
		 exit 1
	    fi
    done
	for var in "$@"
	do
		echo "$var"
	done | sort -nr
else
	echo "Usage: $0 [incr/dec] [numbers]"
fi
