objects = main.o sum.o constants.o

math : $(objects)
	cc -o math $(objects)

main.o : main.c constants.h sum.h
	cc -c main.c

sum.o : sum.c sum.h
	cc -c sum.c

constants.o : constants.c constants.h
	cc -c constants.c

clean :
	rm math $(objects)
