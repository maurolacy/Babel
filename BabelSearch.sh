#!/bin/bash

PHRASE="$@"
[ -z "$PHRASE" ] && echo "Usage: $0 <phrase>" && exit 1

# Default number of digits to search for
#DIGITS=100000
DIGITS=1000000

# Min numerical base to search
MIN=`echo -n "$PHRASE" | sed 's/\(.\)/\1\n/g' | sort -u | wc -l`
# Max numerical base to search
MAX=62

echo $PHRASE
REGEX=`./Babel.pl "$PHRASE"`

for B in `seq $MIN $MAX`
do
    echo $B
    KEY=`./pi.sh $B $REGEX $DIGITS`
    LEN=`echo -n $KEY | wc -c`
    if [ $LEN -lt $DIGITS ]
    then
        break
    fi
done

if [ $LEN -lt $DIGITS ]
then
    REGEX2=`echo $REGEX | sed 's/\.\*?//'`
    TR="`./tr.py $KEY \"$PHRASE\"`"
#    D=`./pi.m $DIGITS $B | perl -pe "$REGEX2" | wc -c`
    D=`./pi $DIGITS $B | perl -pe "$REGEX2" | wc -c`
#    D=`expr $D - 2` # Mathematica 8
#    D=`expr $D - 1` # Mathematica 10
    D=`expr $D - 1` # gmp-chudnovsky
#    ./pi.m $D $B | tr 0-9A-Za-z "$TR"
#    ./pi $D $B | tr 0-9A-Za-z "$TR"
    echo "Perlre: $REGEX"
    echo "Base  : $B"
    echo "Digits: $D"
    echo "Key   : $KEY"
    echo -n "Table : " #0-9A-Za-z $TR"
    if [ $B -gt 10 ]
    then
        echo -n 0-9
        if [ $B -gt 36 ]
        then
            echo -n A-Z
            D=`expr 60 + $B`
            D=`echo "obase=16;$D" | bc`
            echo -n -e "a-\x$D"
        else
            D=`expr 54 + $B`
            D=`echo "obase=16;$D" | bc`
            echo -n -e "A-\x$D"
        fi
    else
        D=`expr 47 + $B`
        D=`echo "obase=16;$D" | bc`
        echo -n -e "0-\x$D"
    fi
    echo -n " "
    BACKS=`echo -n "$TR" | sed 's/[^\\]*//g' | wc -c`
    echo "$TR" | sed "s/\(.\{$[B + $BACKS]\}\).*/\1/"
fi
