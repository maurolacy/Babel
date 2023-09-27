#!/usr/bin/env python3

from mpmath import pi, mp
from sys import argv, stderr, exit


if __name__ == "__main__":
    if len(argv) > 1:
        precision=int(argv[1])
    else:
        print("Usage: %s <digits>" % argv[0], file=stderr)
        exit(1)
    mp.dps=precision
    print(pi)
