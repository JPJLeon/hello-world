/* orbitas.asy*/

/* Copyright (c) 2009-2010, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

unitsize(1cm);
defaultpen(fontsize(10));

vertex[] v = {
	      vertex(( 0,    0), "\(c\)", W),
	      vertex((-0.9,  1), "\(a\)", NW),
	      vertex((-0.9, -1), "\(b\)", SW),
	      vertex(( 1.2,  0), "\(e\)", NW),
	      vertex(( 1.2,  1), "\(d\)", N),
	      vertex(( 1.2, -1), "\(f\)", S),
	      vertex(( 2.4,  0), "\(g\)", NW),
	      vertex(( 3.4,  1), "\(h\)", WNW),
	      vertex(( 3.4,  0), "\(i\)", NW),
	      vertex(( 3.4, -1), "\(j\)", WSW),
	      vertex(( 4.4,  1), "\(k\)", NE),
	      vertex(( 4.4,  0), "\(l\)", E),
	      vertex(( 4.4, -1), "\(m\)", SE)
	     };

edge[] e = {edge(0,  1),
	    edge(0,  2),
	    edge(0,  3),
	    edge(3,  4),
	    edge(3,  5),
	    edge(3,  6),
	    edge(6,  7),
	    edge(6,  8),
	    edge(6,  9),
	    edge(7, 10),
	    edge(8, 11),
	    edge(9, 12)};

DrawGraph(v, e);
