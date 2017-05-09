/**
 * @file selection
 * @brief Straight selection sort
 */

#include "sort.h"

void
sort(double a[], int n)

{
	for(int i = 0; i < n; i++) {
		int imin = i; double min = a[i];
		for(int j = i + 1; j < n; j++)
			if(a[j] < min) {
				imin = j; min = a[j];
			}
		double tmp = a[i]; a[i] = a[imin]; a[imin] = tmp;
	}
}
