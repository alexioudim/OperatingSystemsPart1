#!/bin/bash
if [ $# -ne 1 ]
then
echo "Usage: $0 [directory]"
else
	file -b $1/* | uniq -c | sort -nr
fi