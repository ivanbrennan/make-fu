objects = main.o sum.o constants.o

math : $(objects)
	cc -o math $(objects)

$(objects) : constants.h
main.o sum.o : sum.h

.PHONY : clean
clean :
	rm math $(objects)
