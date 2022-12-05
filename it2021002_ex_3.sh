#!/bin/bash

file -b $1/* | uniq -c | sort -r
