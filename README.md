# BabelSearch

Search for arbitrary strings or phrases in the digits of Pi.
Inspired by Jorge Luis Borges's [[1]] short story, "_La Biblioteca de Babel_". [[2]]

[1]: https://en.wikipedia.org/wiki/Jorge_Luis_Borges
[2]: https://en.wikipedia.org/wiki/The_Library_of_Babel

## Dependencies

    libgmp >= 5.0.2

## Installation / Usage

    $ make # compiles pi utility
    $ ./BabelSearch.sh <phrase> # Search for 'phrase' in the digits of Pi
    $ ./pi <digits> <base> | tr <table> # Uses BabelSearch.sh reported values to generate output

## Examples
### Ex. 1

Search for "Hello, world!" in the digits of Pi

    $ ./BabelSearch.sh Hello, world!
    Hello, world!
    10
    Perlre : s/.*?(.)(?!\1)(.)(?!\1|\2)(.)(?!\1|\2)(.)(?!\1|\2|\3|\4)(.)(?!\1|\2|\3|\4|\5)(.)(?!\1|\2|\3|\4|\5|\6)(.)(?!\1|\2|\3|\4|\5|\6|\7)(.)(?!\1|\2|\3|\4|\6|\7|\8)(.)(?!\1|\2|\3|\4|\5|\6|\7|\8|\9)(.)(?!\1|\2|\5|\6|\7|\8|\9|\10)(.)(?!\1|\2|\3|\4|\5|\6|\7|\8|\9|\10|\11)(.)(?!\1|\2|\3|\4|\5|\6|\7|\8|\9|\10|\11|\12)(.).*/$1$2$3$4$5$6$7$8$9$10$11$12$13/
    Digits : 274656
    Base   : 10
    Key    : 9788046502813
    Command: ./pi 274656 10 | tr 0-9 odr\!,w\ elH
    $ ./pi 274656 10 | tr 0-9 odr\!,w\ elH
    ...
    ...
    ...
    r,re,!!,H,!eHor!lr,H,H,,welwd ,H! dreo!r ,r!!HoH,w,,lol roorl!w!wr r dewrHldl!wwrwrHello, world!
    $ 

### Ex. 2
Search for a random phrase like 'scallop shells are cool'

    $ ./BabelSearch.sh scallop shells are cool
    scallop shells are cool
    10
    11
    12
    13
    14
    15
    16
    17
    18
    19
    20
    21
    Perlre : s/.*?(.)(?!\1)(.)(?!\1|\2)(.)(?!\1|\2|\3)(.)(?!\1|\2|\3)(.)(?!\1|\2|\3|\4|\5)(.)(?!\1|\2|\3|\4|\5|\6)(.)(?!\1|\2|\3|\4|\5|\6|\7)(.)(?!\2|\3|\4|\5|\6|\7|\8)(.)(?!\1|\2|\3|\4|\5|\6|\7|\8|\9)(.)(?!\1|\2|\3|\4|\5|\6|\7|\8|\9|\10)(.)(?!\1|\2|\3|\6|\7|\8|\9|\10|\11)(.)(?!\1|\2|\3|\6|\7|\8|\9|\10|\11)(.)(?!\2|\3|\4|\5|\6|\7|\8|\10|\11|\12|\13)(.)(?!\1|\2|\3|\4|\5|\6|\7|\9|\10|\11|\12|\13|\14)(.)(?!\1|\2|\4|\5|\6|\7|\8|\9|\10|\11|\12|\13|\14|\15)(.)(?!\1|\2|\3|\4|\5|\6|\7|\8|\9|\10|\11|\12|\13|\14|\15|\16)(.)(?!\1|\2|\3|\4|\5|\6|\7|\8|\9|\10|\12|\13|\14|\15|\16|\17)(.)(?!\1|\2|\3|\4|\5|\6|\7|\9|\10|\11|\12|\13|\14|\16|\17|\18)(.)(?!\1|\3|\4|\5|\6|\7|\8|\9|\10|\11|\12|\13|\14|\15|\16|\17|\18|\19)(.)(?!\1|\2|\3|\4|\5|\7|\8|\9|\10|\11|\12|\13|\14|\15|\16|\17|\18|\19|\20)(.)(?!\1|\2|\3|\4|\5|\7|\8|\9|\10|\11|\12|\13|\14|\15|\16|\17|\18|\19|\20)(.)(?!\1|\2|\3|\6|\7|\8|\9|\10|\11|\14|\15|\16|\17|\18|\19|\20|\21|\22)(.).*/$1$2$3$4$5$6$7$8$9$10$11$12$13$14$15$16$17$18$19$20$21$22$23/
    Digits : 600070
    Base   : 21
    Key    : KCHAF4I2G3BFD9256EJ1048
    Command: ./pi 600070 21 | tr 0-9A-K oc\ hoar7lsleclelsap\ s
    $ ./pi 600070 21 | tr 0-9A-K oc\ hoar7lsleclelsap\ s
    ...
    ...
    ...
    csocle lshpe7 c7po els7  lcpelccoc7lhsleerpsl sscallop shells are cool
    $ 

### Ex. 3
Michael's full name is first encoded starting at the digit 483967, in base 26

    $ ./pi 483989 26 | tr 0-9A-P 0norpl6hsei\ hbloaeKJmc\ MuP
    ...
    ...
    ...
    0ocrimK6bhieorcJnis chhKiPhplmlPmKebbr oespb eMichael Joseph Kornblum
    $ 

### Ex. 4
Share a secret
    
    $ ./pi 184145 32 | tr 0-9A-V ua\ \ aodlmc\ rblelGm\ teLoNcoQgsTau
    ...
    ...
    ...

## Applications

As far as I know, there are none! And that's one of the things I particularly like about it. Perhaps a nice T-shirt can
be built based on the output results.

In any case, it's a fun little program to play around with. Feel free to create an issue if you have any questions or
comments.