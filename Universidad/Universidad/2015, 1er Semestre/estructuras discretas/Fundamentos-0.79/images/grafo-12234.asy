/* grafo-12234.asy*/

/* Copyright (c) 2009-2010, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

unitsize(1cm);
defaultpen(fontsize(10));

vertex[] v = {
	      vertex(( 0,   0),	  "3", S),
	      vertex((-1.1, 1.5), "2", WNW),
	      vertex(( 0,   1.5), "4", NE),
	      vertex(( 1.1, 1.5), "2", ENE),
	      vertex(( 0,   2.7), "1", N)
	     };

edge[] e = {edge(0, 1),
	    edge(0, 2),
	    edge(0, 3),
	    edge(1, 2),
	    edge(2, 3),
	    edge(2, 4)};

DrawGraph(v, e);
