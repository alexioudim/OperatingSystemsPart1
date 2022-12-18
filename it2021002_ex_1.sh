#!/bin/bash
if [ $# -ne 1 ]
then
    echo "Usage: $0 [directory]"
else
	find . -not -path '*/.*' -empty
fi