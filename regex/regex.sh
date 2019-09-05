#!/usr/bin/env bash

sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt > r0_output.txt

#To filter only lines that we want, and get rid of awesome
FILTERED_FILE=$(grep -o 'I am ([a-zA-Z]+). My favorite sandwich is ([a-zA-Z]+).' r1_input.txt)
echo $FILTERED_FILE

#https://stackoverflow.com/questions/1665549/have-sed-ignore-non-matching-lines
sed -E 's/\* I am ([a-zA-Z]+). My favorite sandwich is ([a-zA-Z]+)./1. \1\n2 \2\n/;t;d' < r1_input.txt > r1_output.txt
