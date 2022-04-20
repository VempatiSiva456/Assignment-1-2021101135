#!/bin/bash
# sed '/^$/d' $1 ---> is to remove empty lines
# awk '!a[$0]++' $1 ---> is to remove duplicate lines
#combining both
sed '/^$/d' $1 | awk '!a[$0]++'