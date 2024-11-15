#!/bin/bash
$1 : list of input files seperated by space
$2 : output file

echo $1 | tr ' ' '\n' | while read fname
do
    sort -k1 -k2 $fname
done >> $2
