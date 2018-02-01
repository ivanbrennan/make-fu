#include <stdio.h>
#include "constants.h"
#include "sum.h"
#include "lib/shareme.h"

int main(void)
{
	int x, y, z;
	x = a();
	y = b();
	z = e();

	printf("%d + %d + %d = %d\n", x, y, z, sum(x, y));
	print_shared();
	return 0;
}
