/* red-residual.asy*/

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
	     edge(0, 1, "12"),
	     edge(0, 2,	 "5"),
	     edge(1, 0,	 "4"),
	     edge(1, 2,	 "5"),
	     edge(1, 3,	 "3"),
	     edge(2, 0,	 "8"),
	     edge(2, 1,	 "5"),
	     edge(2, 3,	 "4"),
	     edge(2, 4,	 "7"),
	     edge(3, 1,	 "9"),
	     edge(3, 2,	 "5"),
	     edge(3, 4,	 "3"),
	     edge(3, 5, "12"),
	     edge(4, 2,	 "7"),
	     edge(5, 3,	 "8"),
	     edge(5, 4,	 "4"),
	    };

CalcGraph(v, e);

draw(e[ 1].pt, Yellow + 3.5);
draw(e[ 7].pt, Yellow + 3.5);
draw(e[12].pt, Yellow + 3.5);

JustDrawGraph(v, e, true, esep = 0.22);
