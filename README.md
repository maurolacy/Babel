BabelSearch:
Search for arbitrary strings in the digits of Pi.
Inspired by Jorge Luis Borges's [[1]] short story, "La Biblioteca de Babel." [[2]]

[1]: https://en.wikipedia.org/wiki/Jorge_Luis_Borges
[2]: https://en.wikipedia.org/wiki/The_Library_of_Babel

Dependencies:

    libgmp >= 5.0.2 

Install/Usage:

    make # compiles pi utility
    ./BabelSearch.sh "phrase" # Search for phrase in the digits of Pi
    ./pi <digits> 1 <base> | tr <table> # Using BabelSearch.sh reported values

Ex.: Search for "Hello, world!" in the digits of Pi:

    ./BabelSearch.sh 'Hello, world!'
    Hello, world!
    10
    Perlre: s/.*?(.)(?!\1)(.)(?!\1|\2)(.)(?!\1|\2)(.)(?!\1|\2|\3|\4)(.)(?!\1|\2|\3|\4|\5)(.)(?!\1|\2|\3|\4|\5|\6)(.)(?!\1|\2|\3|\4|\5|\6|\7)(.)(?!\1|\2|\3|\4|\6|\7|\8)(.)(?!\1|\2|\3|\4|\5|\6|\7|\8|\9)(.)(?!\1|\2|\5|\6|\7|\8|\9|\10)(.)(?!\1|\2|\3|\4|\5|\6|\7|\8|\9|\10|\11)(.)(?!\1|\2|\3|\4|\5|\6|\7|\8|\9|\10|\11|\12)(.).*/$1$2$3$4$5$6$7$8$9$10$11$12$13/
    Base  : 10
    Digits: 274655
    Key   : 9788046502813
    Table : 0-9 odr\!,w\ elH

    ./pi 274655 1 10 | tr 0-9 odr\!,w\ elH # Shows result
