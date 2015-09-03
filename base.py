#!/usr/bin/python

import string

BASE_LIST = string.digits + string.letters + '_@'
BASE_DICT = dict((c, i) for i, c in enumerate(BASE_LIST))

def decode(string, reverse_base=BASE_DICT):
    length = len(reverse_base)
    ret = 0
    for i, c in enumerate(string[::-1]):
        ret += (length ** i) * reverse_base[c]

    return ret

def encode(integer, base=BASE_LIST):
    length = len(base)
    ret = ''
    while integer != 0:
        ret = base[integer % length] + ret
        integer /= length

    return ret

#base = '_' + string.lowercase
#rbase = dict((c, i) for i, c in enumerate(base))
#print 'base:', base
#for i in range(100):
#    print i, decode(encode(i, base), rbase), encode(i, base)
