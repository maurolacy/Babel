import sys
from decimal import *

def factorial(n):
    if n <= 1: return n
    return n*factorial(n-1)

def get_pi(digits):
    iter = int(digits/14) + 1
    result = Decimal(13591409)
    getcontext().prec = digits+2
    
    for i in range(1,iter+1):
        numer = factorial(6*i) * (13591409+545140134*i)
        denom = factorial(3*i) * factorial(i)**3 * (-640320)**(3*i)
        result += Decimal(numer)/Decimal(denom)
    
    return Decimal(426880) * Decimal(10005)**Decimal('0.5') / result

#print factorial(6)
print get_pi(int(sys.argv[1]))
