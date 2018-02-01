objects = main.o sum.o constants.o

VPATH = lib

math : $(objects) -lshareme
	cc -o $@ $^
#         $@    -> target
#            $^ -> prerequisites

main.o : main.c constants.h sum.h
sum.o : constants.h sum.h
constants.o : constants.h
# implicit rule
#   foo.o : ...
#        cc -c foo.c

.PHONY : clean
clean :
	-rm math main.o
