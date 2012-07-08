from bigfloat import const_pi, precision
from string import translate, maketrans
print translate(str(const_pi(precision(5482))), maketrans('0123456789', '.Hdlro lwe'))
print translate(str(const_pi(precision(24746))), maketrans('0123456789', 'rd.eHwlo! '))