/* actividades.asy*/

/* Copyright (c) 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

unitsize(1cm);
defaultpen(fontsize(10));

vertex v[] = {
	       vertex(( 0,  0), "1", W),
	       vertex(( 2,  2), "2", NNW),
	       vertex(( 3, -2), "3", SSW),
	       vertex(( 5,  0), "4", NE),
	       vertex(( 7,  2), "5", NE),
	       vertex(( 7, -2), "6", SSE),
	       vertex(( 8,  0), "7", SSE),
	       vertex((10,  0), "8", E)
	      };

edge e[] = {
	     edge(0, 1, "\(A\)"),
	     edge(0, 2, "\(B\)", S),
	     edge(1, 2, "\(E\)"),
	     edge(1, 3, "\(C\)"),
	     edge(1, 4, "\(D\)"),
	     edge(2, 5, "\(H\)"),
	     edge(3, 6, "\(F\)"),
	     edge(4, 6, "\(G\)"),
	     edge(5, 6, "\(I\)"),
	     edge(6, 7, "\(J\)")
	   };

DrawGraph(v, e, true);
