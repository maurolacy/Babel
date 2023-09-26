#!/usr/bin/env python3

import string

BASE_LIST = string.digits + string.ascii_letters + '_@'
BASE_DICT = dict((c, i) for i, c in enumerate(BASE_LIST))


def decode(s, reverse_base=BASE_DICT):
    l = len(reverse_base)
    ret = 0
    for i, c in enumerate(s[::-1]):
        ret += (l ** i) * reverse_base[c]
    return ret


def encode(i, base=BASE_LIST):
    l = len(base)
    ret = ''
    while i != 0:
        ret = base[i % l] + ret
        i //= l
    return ret


base = '_' + string.ascii_lowercase
rbase = dict((c, i) for i, c in enumerate(base))
print('base:', base)
for i in range(100):
    print(i, decode(encode(i, base), rbase), encode(i, base))
