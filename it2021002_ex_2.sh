#!/bin/bash

echo "$(date +%d-%m-%y,%T ) $(netstat -at | grep ESTABLISHED | wc -l)" | tee -a tcp_connections.txt