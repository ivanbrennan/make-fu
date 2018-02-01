#include <stdio.h>
#include "shareme.h"

void print_shared(void)
{
	printf("Running a shared library...\n");
}

/*
 * Compile with Position Independent Code:
     cc -c -Wall -Werror -fpic shareme.c

 * Create a shared library from the object file:
     cc -shared -o libshareme.so shareme.o

 * Compile a program that uses this library:
     cc -c -o main.o main.c
     cc -c -o sum.o sum.c
     cc -c -o constants.o constants.c
     cc -Llib -Wl,-rpath=lib -Wall \
        -o math main.o sum.o constants.o -lshareme
 */
