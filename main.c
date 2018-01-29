#include <stdio.h>
#include "constants.h"
#include "sum.h"

int main(void)
{
	int x, y;
	x = a();
	y = b();

	printf("%d + %d = %d", x, y, sum(x, y));
	return 0;
}
