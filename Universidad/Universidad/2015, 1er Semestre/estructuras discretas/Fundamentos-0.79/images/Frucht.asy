/* Frucht.asy*/

/* Copyright (c) 2009-2010 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

// Frucht, Robert, "Herstellung von Graphen mit vorgegebener abstrakter Gruppe."
// Compos. Math. 6, 239-250, 1939
import graphs;

unitsize(1cm);

vertex[] v;

int sides;

void BuildV(int n)
{
  real scale = 1.5 / (2 * sin(pi / n));
  pair start, r = expi(2 * pi / n);
  int i;

  if(n % 2 == 1) {
    start = (0, 1) * scale;
  }
  else if(n % 4 != 0) {
    start = (1, 0) * scale;
  }
  else {
    start = expi(pi / n) * scale;
  }

  v.push(start);
  for(i = 1; i < n; ++i)
    v.push(start *= r);
}

BuildV(10);

v.push(((v[1].p + v[4].p) / 2 * 2 + (v[7].p + v[9].p) / 2 * 5) / 7);
v.push(((v[1].p + v[4].p) / 2 * 5 + (v[7].p + v[9].p) / 2 * 2) / 7);

edge[] e = {edge( 0,  1, ForestGreen + 1),
	    edge( 0,  2, Red + 1),
	    edge( 0,  9, Blue + 1),
	    edge( 1,  2, Blue + 1),
	    edge( 1, 11, Red + 1),
	    edge( 2,  3, ForestGreen + 1),
	    edge( 3,  4, Red + 1),
	    edge( 3,  5, Blue + 1),
	    edge( 4,  5, ForestGreen + 1),
	    edge( 4, 11, Blue + 1),
	    edge( 5,  6, Red + 1),
	    edge( 6,  7, ForestGreen + 1),
	    edge( 6,  8, Blue + 1),
	    edge( 7,  8, Red + 1),
	    edge( 7, 10, Blue + 1),
	    edge( 8,  9, ForestGreen + 1),
	    edge( 9, 10, Red + 1),
	    edge(10, 11, ForestGreen + 1)};

DrawGraph(v, e);
