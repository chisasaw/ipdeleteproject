#!/bin/bash

file=$1
timestamp=`date +%s`

awk '!seen[$2]++' $file | awk '('$timestamp'-$3)/86400 > 365 {print $1 "    "$2"    " ('$timestamp' - $3)/86400" days    " $4}' | sort -nrk3 
