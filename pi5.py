#!/usr/bin/python

from mpmath import pi, mp
from string import digits, maketrans, translate
from sys import argv, stderr, exit

if __name__ == "__main__":
    if len(argv) > 1:
        precision=int(argv[1])
    else:
        print >>stderr, "Usage: %s <digits>" % argv[0]
        exit(1)
    mp.dps=precision
    print pi
