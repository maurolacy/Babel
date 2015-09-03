#!/usr/bin/python

import sys
from bigfloat import *
#from string import *
#print translate(str(const_pi(precision(209276))), maketrans('0123456789', 'del l!owrH'))
print const_pi(precision(int(sys.argv[1])))
