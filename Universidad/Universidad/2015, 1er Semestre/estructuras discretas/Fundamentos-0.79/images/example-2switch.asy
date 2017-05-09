/* example-2switch.asy*/

/* Copyright (c) 2012-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

unitsize(1cm);
defaultpen(fontsize(10));

vertex[] v;

real scale = 1.5 / (2 * sin(pi / 7));
pair start, r = expi(2 * pi / 7);
int i;

start = (0, 1) * scale;
v.push(start);
for(i = 1; i < 7; ++i)
  v.push(start *= r);

v[0].label = "\(y\)"; v[0].dir = v[0].p;
v[3].label = "\(x\)"; v[3].dir = v[3].p;
v[5].label = "\(v\)"; v[5].dir = v[5].p;
v[6].label = "\(u\)"; v[6].dir = v[6].p;

edge[] e = {
	     edge(0, 1),
	     edge(0, 3, Blue + 1.5),  /*  1 */
	     edge(0, 4),
	     edge(1, 2),
	     edge(1, 4),
	     edge(1, 5),
	     edge(2, 4),
	     edge(2, 5),
	     edge(3, 4),
	     edge(4, 5),
	     edge(5, 6, Blue + 1.5)   /* 10 */
};

DrawGraph(v, e);

shipout("images/example-2switch-a");

erase();

e[ 1] = edge(0, 5, Red + 1.5);
e[10] = edge(3, 6, Red + 1.5);

DrawGraph(v, e);

shipout("images/example-2switch-b");
