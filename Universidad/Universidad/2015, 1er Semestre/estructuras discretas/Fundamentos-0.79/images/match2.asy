/* match2.asy*/

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

vertex[] v = BuildKmn(5, 6);

int i;

erase();

edge[] e = {edge(5 - 1, 11 - 3, Black + 1.2),
	    edge(5 - 2, 11 - 1, Gray),
	    edge(5 - 2, 11 - 2, Gray),
	    edge(5 - 2, 11 - 3, Gray),
	    edge(5 - 3, 11 - 1, Black + 1.2),
	    edge(5 - 3, 11 - 4, Gray),
	    edge(5 - 3, 11 - 5, Gray),
	    edge(5 - 4, 11 - 2, Black + 1.2),
	    edge(5 - 4, 11 - 4, Gray),
	    edge(5 - 4, 11 - 6, Gray),
	    edge(5 - 5, 11 - 4, Gray),
	    edge(5 - 5, 11 - 6, Black + 1.2)};

for(i = 1; i <= 5; ++i) {
  v[5 - i].label = format("$x_%d$", i);
  v[5 - i].dir = W;
}
for(i = 1; i <= 6; ++i) {
  v[11 - i].label = format("$y_%d$", i);
  v[11 - i].dir = E;
}

DrawGraph(v, e);
shipout("images/match-ini");

erase();

edge[] e = {edge(5 - 1, 11 - 3, Black + 1.2),
	    edge(5 - 2, 11 - 1, Black + 1.2),
	    edge(5 - 2, 11 - 2, Gray),
	    edge(5 - 2, 11 - 3, Gray),
	    edge(5 - 3, 11 - 1, Gray),
	    edge(5 - 3, 11 - 4, Gray),
	    edge(5 - 3, 11 - 5, Black + 1.2),
	    edge(5 - 4, 11 - 2, Black + 1.2),
	    edge(5 - 4, 11 - 4, Gray),
	    edge(5 - 4, 11 - 6, Gray),
	    edge(5 - 5, 11 - 4, Gray),
	    edge(5 - 5, 11 - 6, Black + 1.2)};

DrawGraph(v, e);
shipout("images/match-fin");

erase();

real xscale = 1.2, yscale = 1.5;

vertex[] v = {
	      vertex((3 * xscale, 4 * yscale), "\(x_2\)", NW),
	      vertex((1 * xscale, 3 * yscale), "\(y_1\)", NW),
	      vertex((3 * xscale, 3 * yscale), "\(y_2\)", NW),
	      vertex((5 * xscale, 3 * yscale), "\(y_3\)", NE),
	      vertex((1 * xscale, 2 * yscale), "\(x_3\)", NW),
	      vertex((3 * xscale, 2 * yscale), "\(x_4\)", ENE),
	      vertex((5 * xscale, 2 * yscale), "\(x_1\)", ENE),
	      vertex((0 * xscale, 1 * yscale), "\(y_5\)", SW),
	      vertex((2 * xscale, 1 * yscale), "\(y_4\)", SW),
	      vertex((4 * xscale, 1 * yscale), "\(y_6\)", ENE),
	      vertex((4 * xscale, 0 * yscale), "\(x_5\)", SE)
	     };

edge[] e = {edge(0,  1, Gray),
	    edge(0,  2, Gray),
	    edge(0,  3, Gray),
	    edge(1,  4, Black + 1.4),
	    edge(2,  5, Black + 1.4),
	    edge(3,  6, Black + 1.4),
	    edge(4,  7, Gray),
	    edge(4,  8, Gray),
	    edge(5,  8, Gray),
	    edge(5,  9, Gray),
	    edge(9, 10, Black + 1.4)};

draw(v[0].p -- v[1].p -- v[4].p -- v[7].p, Yellow + 3);

DrawGraph(v, e);

shipout("images/match-bca");
