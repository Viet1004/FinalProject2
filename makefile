libs = -ljansson

all: IPrelease
 
IPrelease: IPrelease.o decode.o toBinary.o
	cc -g -o IPrelease IPrelease.o decode.o toBinary.o -ljansson

decode.o: decode.c
	cc -c -Wall -g decode.c

IPrelease.o: IPrelease.c 
	cc -c -Wall -g IPrelease.c

toBinary.o: toBinary.c
	cc -c -Wall -g toBinary.c

clean:
	rm IPrelease IPrelease.o decode.o toBinary.o 

