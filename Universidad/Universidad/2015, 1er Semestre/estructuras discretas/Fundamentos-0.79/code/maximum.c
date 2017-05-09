double maximum(const double a[], const int n)
{
	int i;
	double m;

	m = a[0];
	for(i = 1; i < n; i++)
		if(a[i] > m)
			m = a[i];
	return m;
}
