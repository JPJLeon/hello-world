/*
 * Recurrence for k-subsets of n with no adyacents
 * Horst H. von Brand, 2013
 */

#include <stdio.h>
#include <stdlib.h>

#define N 20

int s(const int n, const int k);
int fib(const int n);

int main()
{
	printf("n\\k:");
	for(int k = 0; k <= N / 2 + 1; k++)
		printf("%5d", k);
	printf("\n");
	printf("----");
	for(int k = 0; k <= N / 2 + 1; k++)
		printf("-----");
	printf("\n");

	for(int n = 0; n <= N; n++) {
		printf("%3d:", n);
		for(int k = 0; k <= N / 2 + 1; k++)
			printf("%5d", s(n, k));
		printf("\n");
	}

	printf("\n");
	for(int n = 0; n < N; n++) {
		printf("%3d:", n);
		int ss = 0;
		for(int k = 0; k < N / 2 + 1; k++)
			ss += s(n, k);
		printf("%6d (%6d)\n", ss, fib(n + 2));
	}
}

int s(const int n, const int k)
{
	if(n == 0)
		return k == 0;
	else if(n == 1)
		if(k == 0 || k == 1)
			return 1;
		else
			return 0;
	else /* n > 1 */
		if(k == 0)
			return 1;
		else
			return s(n - 1, k) + s(n - 2, k - 1);
}

int fib(const int n)
{
	if(n == 0)
		return 0;
	else if(n == 1)
		return 1;
	else
		return fib(n - 1) + fib(n - 2);
}
