#!/bin/bash

awk '!/::1/ {print $1}' apache.log.txt | sort -n | uniq -c | sort -nr | head -10

