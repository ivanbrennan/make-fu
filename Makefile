objects = main.o sum.o constants.o

math : $(objects)
	gcc -o math $(objects)

main.o : main.c constants.h sum.h
	gcc -c main.c

sum.o : sum.c sum.h
	gcc -c sum.c

constants.o : constants.c constants.h
	gcc -c constants.c

clean :
	rm math $(objects)
