#!/usr/bin/python

from bigfloat import const_pi, precision
from string import digits, maketrans, translate
print translate(str(const_pi(precision(24746))), maketrans(digits, 'rd\neHwlo! '))
#print
#print translate(str(const_pi(precision(5482))), maketrans(digits, '.Hdlro lwe'))
