#!/usr/bin/env python3

from mpmath import pi, mp
from string import digits


mp.dps = 274656 
pi = str(pi)
print(pi.translate(pi.maketrans(digits, 'odr!,w elH')))
