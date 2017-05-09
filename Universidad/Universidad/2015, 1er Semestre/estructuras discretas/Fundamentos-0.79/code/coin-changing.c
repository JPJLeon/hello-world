/*
 * Pólya's coin changing problem solution.
 * See G. Pólya "On Picture-Writing", The American Mathematical Monthly,
 * 63(10), 689-697 (1956)
 *
 * Horst H. von Brand <vonbrand@inf.utfsm.cl>, 2012
 */

#include <stdio.h>
#include <stdlib.h>

int b(const int n), c(const int n), d(const int n), p(const int n);

int main()
{
	int n;

	while(printf("n: "), scanf("%d", &n) != EOF) {
		printf("P(%d) = %d\n", n, p(n));
	}
	printf("\n");

	exit(EXIT_SUCCESS);
}

int b(const int n)
{
	return n < 5 ? 1 : b(n - 5) + 1;
}

int c(const int n)
{
	return n < 10 ? b(n) : c(n - 10) + b(n);
}

int d(const int n)
{
	return n < 25 ? c(n) : d(n - 25) + c(n);
}

int p(const int n)
{
	return n < 50 ? d(n) : p(n - 50) + d(n);
}
