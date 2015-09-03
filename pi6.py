#!/usr/bin/env python

from mpmath import pi, mp
from string import digits, maketrans, translate

mp.dps=274656
print translate(str(pi), maketrans(digits, 'odr!,w elH'))
