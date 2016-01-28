CFLAGS = "-O3"
LIBS = -lgmp -lm

SOURCES = "gmp-chudnovsky.c"
all: $(SOURCES)

$(SOURCES):
	gcc $(SOURCES) $(CFLAGS) -o pi $(LIBS)

clean:
	rm -f pi.o pi
