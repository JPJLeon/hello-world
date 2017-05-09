/* 2componentes.asy*/

/* Copyright (c) 2009-2010 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graphs;

unitsize(1cm);

vertex[] v;

int sides;

void BuildV(int n)
{
  real scale = 1.5 / (2 * sin(pi / n));
  pair start, r = expi(2 * pi / n);
  int i;

  start = dir(49) * scale;

  v.push(start);
  for(i = 1; i < n; ++i)
    v.push(start *= r);
}

BuildV(5);

v.push((v[1] + v[2]) / 2);
v.push(2.15 * v[5]);
v.push(0.83 * (v[0] + v[1]));
v.push(0.07 * v[2] + 0.47 * v[1]);
v.push(0.57 * v[4] + 0.12 * v[3]);

edge[] e = {edge(0, 1),
	    edge(0, 3),
	    edge(0, 4),
	    edge(1, 5),
	    edge(2, 3),
	    edge(2, 5),
	    edge(3, 4),
	    edge(5, 6),
	    edge(7, 8),
	    edge(7, 9),
	    edge(8, 9)};

DrawGraph(v, e);
