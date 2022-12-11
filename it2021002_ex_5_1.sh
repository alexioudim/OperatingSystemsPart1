#!/bin/bash

curl https://gitlab.com/atsadimas/operating-systems/-/raw/master/exercises/basic-commands/apache.log.txt -o apache.log.txt

awk '!/::1/ {print $1}' apache.log.txt | sort -n | uniq -c | sort -nr | head -10

