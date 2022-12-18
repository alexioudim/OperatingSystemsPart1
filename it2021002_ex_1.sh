#!/bin/bash

#Η εντολή βρίσκει όλα τα άδεια υπο-directories, πλην εκείνων που ξεκινάνε από "/.", δηλαδή τα κρυφά directories

if [ $# -ne 1 ]
then
    echo "Usage: $0 [directory]"
else
	find $1 -not -path '*/.*' -empty 
fi