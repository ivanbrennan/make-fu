src = shareme.c
obj = $(src:.c=.o)
libtarget = libshareme.so

LDFLAGS = -shared
CFLAGS = -Wall -Werror -fpic # position independent code

$(libtarget) : $(obj)
	cc $(LDFLAGS) -o $(libtarget) $(obj)

$(obj) : $(src)
	cc $(CFLAGS) -c $(src)

clean:
	rm -f $(libtarget) $(obj)

.PHONY : clean
