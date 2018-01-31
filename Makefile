objects = main.o sum.o constants.o

math : $(objects)
	cc -o $@ $^
	# $@ -> target
	# $^ -> prerequisites

main.o : constants.h sum.h
sum.o : constants.h sum.h
constants.o : constants.h
# implicit rule
#   foo.o : ...
#        cc -c foo.c

.PHONY : clean
clean :
	-rm math $(objects)
