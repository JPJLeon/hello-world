/** @file tst-bs.c
 *  @brief Test binary-search
 *
 *  Create array filled with 0..21, searches start at position 1
 *  For N in 1..20
 *    Search for each of 1..N		(should be i)
 *    Search for 0			(should be -1)
 *    Search for N + 1			(should be -1)
 *    Search for i + 0.5 for i in 0..N	(should be -1)
 */

#include <stdio.h>
#include <stdlib.h>

#include "binary-search.h"

int main()
{

	DataType xx[22];
	int i, len, r, err;

	for(i = 0; i < 21; i++)
		xx[i] = i;

	err = 0;
	for(len = 1; len <= 20; len++) {
		for(i = 0; i < len; i++) {
			r = binarysearch(i + 1, xx + 1, len);
			if(r != i) {
				printf("bs(%4.0f, x, %2d) = %2d\n",
				       (double) i + 1, len, r);
				err++;
			}
		}
		r = binarysearch(0, xx + 1, len);
		if(r != -1) {
			printf("bs(%4.0f, x, %2d) = %2d\n",
			       (double) 0, len, r);
			err++;
		}
		r = binarysearch(len + 1, xx + 1, len);
		if(r != -1) {
			printf("bs(%4.0f, x, %2d) = %2d\n",
			       (double) len, len, r);
			err++;
		}
		for(i = 0; i < len; i++) {
			r = binarysearch(i + 1.5, xx + 1, len);
			if(r != -1) {
				printf("bs(%4.0f, x, %2d) = %2d\n",
				       (double) i + 1.5, len, r);
				err++;
			}
		}
	}
	if(err)
		printf("%d errors found\n", err);
	else
		printf("No errors found\n");

	exit(EXIT_SUCCESS);
}
