#!/usr/bin/python

from bigfloat import const_pi, precision

import math
import itertools

def convert_base(x, base=3, precision=None):
    length_of_int = int(math.log(x, base))
    iexps = range(length_of_int, -1, -1)
    if precision == None:
        fexps = itertools.count(-1, -1)
    else:
        fexps = range(-1, -int(precision + 1), -1)

    def cbgen(x, base, exponents):
        for e in exponents:
            d = int(x // (base ** e))
            x -= d * (base ** e)
            yield d
            if x == 0 and e < 0: break

    return cbgen(int(x), base, iexps), cbgen(x - int(x), base, fexps)

gi, gf = convert_base(float(const_pi(precision(1000))), base=10)
print ''.join(map(str, gf))
