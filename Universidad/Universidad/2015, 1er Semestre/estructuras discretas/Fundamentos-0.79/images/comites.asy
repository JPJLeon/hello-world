/* comites.asy*/

/* Copyright (c) 2009-2010, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;
import unicode;

unitsize(1cm);
defaultpen(fontsize(10));
currentpen = basealign(1);

vertex[] v;

int i;
real xscale = 0.85 * 12.5 / 5;
real yscale = 0.85 * 10.0 / 3;

for(i = 0; i < 6; ++i)
  v.push((i * xscale, 0));

for(i = 0; i < 4; ++i)
  v.push((i * yscale + 2.5 / 2, 2.5));

edge[] e = {edge(0, 6),
	    edge(0, 8),
	    edge(1, 7),
	    edge(1, 8),
	    edge(2, 9),
	    edge(3, 9),
	    edge(4, 9),
	    edge(5, 6),
	    edge(5, 7),
	    edge(5, 8)};

v[0].label = "Atwood";		v[0].dir = S;
v[1].label = "Dexter";		v[1].dir = S;
v[2].label = "Ellery";		v[2].dir = S;
v[3].label = "Freeborn";	v[3].dir = S;
v[4].label = "Halsey";		v[4].dir = S;
v[5].label = "Upham";		v[5].dir = S;

v[6].label = "Académico";	v[6].dir = N;
v[7].label = "Administración";	v[7].dir = N;
v[8].label = "Investigación";	v[8].dir = N;
v[9].label = "Estacionamiento"; v[9].dir = N;

DrawGraph(v, e);
