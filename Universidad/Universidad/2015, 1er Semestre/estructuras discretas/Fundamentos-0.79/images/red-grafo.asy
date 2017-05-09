/* red-grafo.asy*/

/* Copyright (c) 2009-2010, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

unitsize(1cm);
defaultpen(fontsize(10));

vertex[] v = {vertex((0.0, 0.2), "{\sf\bfseries D}"),
	      vertex((0.5, 2.2), "{\sf\bfseries A}"),
	      vertex((1.5, 0.9), "{\sf\bfseries C}"),
	      vertex((3.4, 0.0), "{\sf\bfseries E}"),
	      vertex((4.5, 1.9), "{\sf\bfseries B}")};

v[0].dir = v[0] - v[2];
v[1].dir = v[1] - v[2];
v[2].dir = NNE;
v[3].dir = v[3] - v[2];
v[4].dir = v[4] - v[2];

edge[] e = {edge(0, 2),
	    edge(1, 2),
	    edge(1, 4),
	    edge(2, 3),
	    edge(2, 4),
	    edge(3, 4)};

DrawGraph(v, e);
