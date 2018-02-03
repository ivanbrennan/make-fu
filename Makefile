objects = main.o sum.o constants.o
libdir = $(CURDIR)/lib

# search for shared libaries in lib/
vpath lib%.so $(libdir)

all : lib math

math : $(objects) -lshareme
	cc -o $@ $^
#         $@    -> target
#            $^ -> prerequisites

main.o : main.c constants.h sum.h
sum.o : constants.h sum.h
constants.o : constants.h
# implicit rule
#   foo.o : ...
#        cc -c foo.o foo.c

.PHONY : lib
lib :
	$(MAKE) -C $(libdir)

# This tells make to delete any target whose recipe fails partway through (e.g. bad command or
# shell killed by signal). It's the behavior you want in most cases, to prevent make from thinking
# the target is up to date, but in the interest of backward compatibility it's not the default.
.DELETE_ON_ERROR :

bork :
	echo "bork-1" > bork
	rm nonexistentfile
	echo "bork-2" >> bork

.PHONY : clean
clean :
	@echo "Cleaning..."
#                       @ tells `make` not to print the command,
#                       just run it, unless the --dry-run / -n
#                       flag was given, in which case print it.
	-rm math $(objects)

.PHONY : cleanall
cleanall : clean
	$(MAKE) -C $(libdir) clean
