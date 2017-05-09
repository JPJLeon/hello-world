/* red-cut.asy*/

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
	     edge(1, 3),
	     edge(2, 4),
	     edge(3, 2),
	     edge(3, 5, "8/20"),
	     edge(4, 3, "3/7"),
	     edge(4, 5, "4/4", S)
	    };

draw((4, -3.2) -- (4, 2.7), dashed);

label("\(S\)", p = fontsize(12), (2.8, -2.9));
label("\(T\)", p = fontsize(12), (5.2, -2.9));

CalcGraph(v, e, true);

label("9/12", (3 * v[e[4].a] + v[e[4].b]) / 4
			+ 0.25 * unit(N * (v[e[4].b] - v[e[4].a])));
label("7/14", (2 * v[e[5].a] + v[e[5].b]) / 3
			+ 0.25 * unit(N * (v[e[5].b] - v[e[5].a])));
label("4/9",  (3 * v[e[6].a] + v[e[6].b]) / 4
			+ 0.30 * unit(S * (v[e[6].b] - v[e[6].a])));

JustDrawGraph(v, e, true, esep = 0.45);
