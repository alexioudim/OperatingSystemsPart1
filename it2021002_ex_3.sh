#!/bin/bash

#Βρίσκει των τύπο των αρχείων του directory που δίνεται σαν όρισμα από το terminal με την find
#Στην συνέχεια με την uniq παραλείπει τις επαναλαμβανόμενες γραμμές ενώ έχει μετρήσει πόσες φορές εμφανίζονται
#Τέλος κάνουμε sort.

if [ $# -ne 1 ]
then
echo "Usage: $0 [directory]"
else
	file -b $1/* | sort | uniq -c | sort -nr
fi