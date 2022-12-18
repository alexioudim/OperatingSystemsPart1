#!/bin/bash

grep -E "GET|POST|HEAD|PUT|DELETE|CONNECT|OPTIONS|TRACE" apache.log.txt | awk '{print $6, $7}' | cut -c 2- | sort | uniq -c | sort -nr | head -20