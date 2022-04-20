#!/bin/bash
#reading a string as input
read str

#q5-a
rev_str=`echo $str | rev`
echo "string in reverse: $rev_str"

#q5-b
echo -n "reverse output with subsequent letter: "
i=$(echo "$rev_str" | tr  "0-9a-zA-Z" "1-9a-zA-ZA")
echo $i

#q5-c
x=${#str}
for (( j=((((x/2))-1)); j>=0; j--));
do
   hstr=$hstr${str:$j:1} 
done
for (( k=((((x/2)))); k<x; k++));
do
   hstr=$hstr${str:$k:1} 
done
echo "half string in reverse: $hstr"