#include <stdio.h>
#include "constants.h"
#include "sum.h"

int main(void)
{
	int x, y, z;
	x = a();
	y = b();
	z = e();

	printf("%d + %d + %d = %d", x, y, z, sum(x, y));
	return 0;
}
