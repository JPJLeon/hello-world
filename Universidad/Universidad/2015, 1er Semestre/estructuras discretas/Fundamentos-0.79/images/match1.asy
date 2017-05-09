/* match1.asy*/

/* Copyright (c) 2009-2010, 2012-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

unitsize(1cm);
defaultpen(fontsize(10));

vertex[] BuildKmn(int m, int n)
{
  int i, j;
  real scale = 1.5;
  real start = (n - m) / 2;
  vertex[] v;

  for(i = 0; i < m; ++i)
    v.push((0, i) * scale);
  for(i = 0; i < n; ++i)
    v.push((1.2, i - start) * scale);

  return v;
}

vertex[] v = BuildKmn(6, 7);

v[ 0].label = "\(x_6\)"; v[ 0].dir = W;
v[ 1].label = "\(x_5\)"; v[ 1].dir = W;
v[ 2].label = "\(x_4\)"; v[ 2].dir = W;
v[ 3].label = "\(x_3\)"; v[ 3].dir = W;
v[ 4].label = "\(x_2\)"; v[ 4].dir = W;
v[ 5].label = "\(x_1\)"; v[ 5].dir = W;
v[12].label = "\(y_1\)"; v[12].dir = E;
v[11].label = "\(y_2\)"; v[11].dir = E;
v[10].label = "\(y_3\)"; v[10].dir = E;
v[ 9].label = "\(y_4\)"; v[ 9].dir = E;
v[ 8].label = "\(y_5\)"; v[ 8].dir = E;
v[ 7].label = "\(y_6\)"; v[ 7].dir = E;
v[ 6].label = "\(y_7\)"; v[ 6].dir = E;

edge[] e = {
	    edge(0,  6, Gray),
	    edge(0,  7, Gray),
	    edge(0,  9, Black + 1.5),
	    edge(1, 10, Gray),
	    edge(2,  6, Gray),
	    edge(2,  8, Black + 1.5),
	    edge(2, 11, Gray),
	    edge(2, 12, Gray),
	    edge(3,  7, Gray),
	    edge(3,  8, Gray),
	    edge(3, 10, Black + 1.5),
	    edge(3, 12, Gray),
	    edge(4,  9, Gray),
	    edge(5,  9, Gray),
	    edge(5, 10, Gray)
	   };

DrawGraph(v, e);
shipout("images/match-3");

erase();

edge[] e = {
	    edge(0,  6, Black + 1.5),
	    edge(0,  7, Gray),
	    edge(0,  9, Gray),
	    edge(1, 10, Black + 1.5),
	    edge(2,  6, Gray),
	    edge(2,  8, Gray),
	    edge(2, 11, Black + 1.5),
	    edge(2, 12, Gray),
	    edge(3,  7, Gray),
	    edge(3,  8, Black + 1.5),
	    edge(3, 10, Gray),
	    edge(3, 12, Gray),
	    edge(4,  9, Gray),
	    edge(5,  9, Black + 1.5),
	    edge(5, 10, Gray)
	   };

DrawGraph(v, e);
shipout("images/match-max");
