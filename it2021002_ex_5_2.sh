#!/bin/bash

grep -E -h -o "GET|POST|HEAD|PUT|DELETE|CONNECT|OPTIONS|TRACE" apache.log.txt