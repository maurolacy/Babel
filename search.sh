:

# Hello world
RE='s/.*?(.)(?!\1)(.)(?!\1|\2)(.)(?!\1|\2)(.)(?!\1|\2|\3|\4)(.)(?!\1|\2|\3|\4|\5)(.)(?!\1|\2|\3|\4|\5|\6)(.)(?!\1|\2|\3|\4|\6|\7)(.)(?!\1|\2|\3|\4|\5|\6|\7|\8)(.)(?!\1|\2|\5|\6|\7|\8|\9)(.)(?!\1|\2|\3|\4|\5|\6|\7|\8|\9|\10)(.).*/$1$2$3$4$5$6$7$8$9$10$11/'

for i in `seq 4000` 5000; do echo -n "$i: "; python ./pi2.py $i |  perl -pe "$RE" | wc -c; done | tee lst; sort -nrk2 lst; rm lst
