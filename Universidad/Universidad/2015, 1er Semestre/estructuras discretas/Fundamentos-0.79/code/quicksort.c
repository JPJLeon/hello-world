static double *a;

static int partition(const int lo, const int hi)
{
	int i = lo; j = hi + 1;

	for(;;) {
		while(a[++i] < a[lo])
			if(i == hi) break;
		while(a[lo] < a[--j])
			if(i == lo) break;
		if(i >= j) break;
		tmp = a[i]; a[i] = a[j]; a[j] = tmp;
	}
	return j;
}

static void qsr(const int lo, const int hi)
{
	int j;

	if(hi <= lo) return;
	j = partition(lo, hi);
	qsr(lo, j - 1);
	qsr(j + 1, hi);
}

void quicksort(double aa[], const int n)
{
	a = aa;
	qsr(0, n - 1);
}

