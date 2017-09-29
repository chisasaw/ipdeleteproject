#!/bin/bash

file=$1
timestamp=`date +%s`

#sort -r -k3 $file

awk '!seen[$2]++' | awk '('$timestamp'-$3)/86400 > 365 {print $1 "    "$2"    " ('$timestamp' - $3)/86400" days    " $4}' $file | sort -nrk2
