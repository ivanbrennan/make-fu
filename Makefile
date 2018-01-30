objects = main.o sum.o constants.o

math : $(objects)
	cc -o math $(objects)

main.o : constants.h sum.h
sum.o : sum.h
constants.o : constants.h

clean :
	rm math $(objects)
