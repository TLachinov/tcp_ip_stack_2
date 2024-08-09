CC=gcc
CFLAGS=-g
TARGET:test.a

OBJS=gluethread/glthread.o \
	graph.o					\
	topologies.o

test.a:testapp.o ${OBJS}
	${CC} ${CFLAGS}	testapp.o ${OBJS} -o test.a

testapp.o:testapp.c
	${CC} ${CFLAGS} -c testapp.c -o testapp.o

gluethread/glthread.o:gluethread/glthread.c
	${CC} ${CFLAGS} -c -I . gluethread gluethread/glthread.c -o gluethread/glthread.o
graph.o:graph.c
	${CC} ${CFLAGS} 	-c -I . graph.c -o graph.o 
topologies.o:topologies.c
	${CC} ${CFLAGS} -c -I . topologies.c -o topologies.o 

clean:
	rm *o 
	rm gluethread/gLthread.o 
	rm *a