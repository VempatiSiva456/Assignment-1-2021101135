#!/bin/bash
let x=1;
while
read a;
do
    echo -n "Line No: <$x> - Count of Words: "
    echo -n $a|wc -w
    ((x=x+1))
done <$1