#!/bin/bash

touch ips.txt
awk '!/::1/ {print $1}' apache.log.txt | sort -n | uniq -c | sort -nr | head -10 | awk '{print $2}' >> ips.txt

for i in {1..10}
do
    ip=$(head -$i ips.txt | tail +$i)
    country=$(curl -s "https://ipapi.co/$ip/country/")
    echo "$ip -> $country"
done

rm ips.txt