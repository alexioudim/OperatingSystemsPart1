#!/bin/bash

if [ "$1" == "incr" ];
then
    echo "test"
    shift 1
    for var in "$@"
    do
        echo "$var"
    done | sort
fi

if [ "$1" == "dec" ];
then
    echo "test"
    shift 1
    for var in "$@"
    do
        echo "$var"
    done | sort -r
fi