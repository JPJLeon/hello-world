/** @file binary-search.c */

#include "binary-search.h"

int binarysearch(const DataType t, const DataType x[], const int n)
{
	int l, u, m;

	l = 0; u = n - 1;
	while(l <= u) {
		/* If @a t is in @a x,
		   it must be in @a x[@a l .. @a u] */
		m = l + (u - l) / 2;
		if(x[m] < t)
			l = m + 1;
		else if(x[m] == t)
			return m;
		else /* x[m] > t */
			u = m - 1;
	}
	return -1;
}
