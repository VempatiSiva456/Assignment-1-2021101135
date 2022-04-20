#!/bin/bash
# Using NF in awk, I am removing empty lines to avoid (once said "") sentences.
awk -F~ 'NF { print $2 " once said, \""$1"\"" }' $1 > $2