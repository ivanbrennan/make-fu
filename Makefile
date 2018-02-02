objects = main.o sum.o constants.o

# search for shared libaries in lib/
vpath lib%.so lib

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
	@echo "Cleaning..."
#                       @ tells `make` not to print the command,
#                       just run it, unless the --dry-run / -n
#                       flag was given, in which case print it.
	-rm math main.o
