#!/usr/bin/env python3
""" Generates translation table for a given key string """
from string import digits, ascii_letters
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
    for key in digits + ascii_letters:
        d[key] = key # default table

    for key, val in zip(k, p):
        d[key]=val

    for key in sorted(d):
        if d[key] in (' ', '!', '?', '"', "'"): # escape these
            print('\%s' % d[key], end='')
        else:
            print(d[key], end='')
    print()
