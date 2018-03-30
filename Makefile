
CC=musl-gcc -Os -Wall
CFLAGS=-static

all: cmd-print container

container:
	strip cmd-print
	sudo docker build -t cmd-print .
	@echo
	sudo docker images
	@echo
	sudo docker run --rm cmd-print
	@echo
	sudo docker run --rm cmd-print passed-arg1 passed-arg2
	@echo


clean:
	rm -f *~ cmd-print

.PHONY: all container clean
