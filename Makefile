objects = main.o sum.o constants.o

math : $(objects)
	cc -o math $(objects)

main.o : constants.h sum.h
sum.o : constants.h sum.h
constants.o : constants.h

.PHONY : clean
clean :
	rm math $(objects)
