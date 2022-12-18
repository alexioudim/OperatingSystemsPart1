#!/bin/bash

#H μεταβλητή 'x' περιέχει μια regular expression (Για λόγους ετκολίας)
#Γίνεται έλεγχος αν η πρώτη παράμετρος είναι incr ή dec και εκτελέι το αντίστοιχο κομμάτι κώδικα αντίστοιχα
#Η εντολή shift μετακινεί τις παραμέτρους 1 θέση αριστερά (έτσι ώστε να παραλείψουμε την πρώτη παράμετρο)
#Γίνεται έλεγχος αν όλες οι υπόλοιπες παράμετροι είναι αριθμοί
#Αν ο έλεγχος είναι επιτυχής, εμφανίζει όλους τους αριθμούς ταξινομημένους.

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
