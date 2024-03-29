# Makefile generated by hand.
CC = gcc
CFLAGS = -O3
LIBS = -lgmp -lm

OS := $(shell uname -o)

ifeq ($(OS),Darwin)
	CFLAGS += -I/opt/homebrew/include
	LDFLAGS += -L/opt/homebrew/lib
endif


OBJEXT = o

all: pi gmp-chudnovsky.$(OBJEXT)

pi: gmp-chudnovsky.$(OBJEXT)
	$(CC) $(LDFLAGS) $^ $(LIBS) -o $@

%.$(OBJEXT): %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	$(RM) *.o pi

install:
	install -m 755 pi /usr/local/bin

uninstall:
	$(RM) /usr/local/bin/pi

.PHONY: all clean
