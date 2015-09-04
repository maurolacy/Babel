#!/usr/bin/env python
""" Generates translation table for a given key string """

from __future__ import print_function
from string import digits, letters
import sys

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: %s <key> <phrase>" % sys.argv[0])
        sys.exit(1)
    k = sys.argv[1]
    p = sys.argv[2]
    if len(k) != len(p):
        print("Key and phrase must be the same length.")
        sys.exit(1)
    d={}
    for key in digits + letters:
        d[key] = key # default table

    for key, val in zip(k, p):
        d[key]=val

    for key in sorted(d):
        if d[key] in (' ', '!', '?', '"', "'"): # escape these
            print('\%s' % d[key], end='')
        else:
            print(d[key], end='')
    print()
