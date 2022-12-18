#!/bin/bash

#Η awk εμφανίζει όλες τις ip εκτός από την ::1
#Στην συνέχεια η uniq της συμμαζέυει και η sort τις ταξινομεί
#Η εντολή head -10 εμφανίζει τις πρώτες 10 ip

awk '!/::1/ {print $1}' apache.log.txt | sort -n | uniq -c | sort -nr | head -10

