#!/bin/bash
let x=0;
awk '{for(x=1; x<=NF; x=x+1) {arr[$x]++}} END {for(y in arr) if(arr[y]>=2) {print "Word: " "<"y">" ,"- Count of repetition: "  "["arr[y]"]" }}' $1