
CC=klcc
CFLAGS=-Wall -Os
LDFLAGS=-static -s

all: cmd-print

container:
	sudo docker build -t cmd-print .
	@echo
	sudo docker images cmd-print
	@echo
	sudo docker run --rm cmd-print
	@echo
	sudo docker run --rm cmd-print passed-arg1 passed-arg2
	@echo

clean:
	rm -f *~ cmd-print *.o

.PHONY: all container clean
