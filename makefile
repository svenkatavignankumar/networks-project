library: mysocket.o
	ar rcs libmsocket.a mysocket.o 

mysocket.o: mysocket.c
	gcc -Wall -c mysocket.c -lpthread

server: server.c libmsocket.a
	gcc -Wall -o server server.c -L. -lmsocket -lpthread

client: client.c libmsocket.a
	gcc -Wall -o client client.c -L. -lmsocket -lpthread

remove:
	rm -f server client mysocket.o

clean:
	rm -f mysocket.o libmsocket.a server client
