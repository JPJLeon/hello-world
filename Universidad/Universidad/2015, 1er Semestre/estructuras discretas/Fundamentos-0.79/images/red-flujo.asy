/* red-flujo.asy*/

/* Copyright (c) 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;
unitsize(1cm);
defaultpen(fontsize(10));

vertex v[] = {
	      vertex((0,  0), "\(s\)", W),
	      vertex((2,  2), "\(a\)", NW),
	      vertex((2, -2), "\(b\)", SW),
	      vertex((6,  2), "\(c\)", NE),
	      vertex((6, -2), "\(d\)", SE),
	      vertex((8,  0), "\(t\)", E)
	     };

edge e[] = {
	     edge(0, 1, "4/16"),
	     edge(0, 2, "8/13", S),
	     edge(1, 2, "3/4"),
	     edge(2, 1, "8/10"),
	     edge(1, 3, "9/12"),
	     edge(2, 4, "7/14", S),
	     edge(3, 2, "4/9"),
	     edge(3, 5, "8/20"),
	     edge(4, 3, "3/7"),
	     edge(4, 5, "4/4", S)
	    };

DrawGraph(v, e, true, esep = 0.45);
