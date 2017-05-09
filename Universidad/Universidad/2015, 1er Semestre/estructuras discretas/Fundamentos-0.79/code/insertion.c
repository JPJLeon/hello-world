void sort(double a[], const int n)
{
     int i, j;
     double tmp;

     for(i = 1; i < n; i++) {
	  tmp = a[i];
	  for(j = i - 1; j >= 0 && tmp < a[j]; j--)
	       a[j + 1] = a[j];
	  a[j + 1] = tmp;
     }
}
