#!/bin/bash

B="$1"
[ -z "$B" ] && B=62

R="$2"
[ -z "$R" ] && echo "Usage: $0 <base> <regex> [digits]" && exit 1

M="$3"
[ -z "$M" ] && M=1000000
./pi.m $M $B | sed 's/^"//;s/"$//' | perl -pe $R
