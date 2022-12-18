#!/bin/bash

#Η εντολή date, με την χρήση των παρακάτω παραμέτρων, εμφανίζει μόνο την ημερομηνία και την ώρα.
#Στην συνέχεια εμφανίζουμε με την netstat -at όλες τα tcp connections.
#Με την grep ξεχωρίζουμε ποια από αυτά είναι established και τα δίνουμε με pipe στο wc για να τα μετρήσει.
#Τέλος με την εντολή tee εκτυπώνουμε το αποτέλεσμα στο terminal και το προσθέτουμε στο .txt αρχείο.


echo "$(date +%d-%m-%y,%T ) $(netstat -at | grep ESTABLISHED | wc -l)" | tee -a tcp_connections.txt