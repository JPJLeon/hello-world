/* grafo-ejemplo.asy*/

/* Copyright (c) 2009-2010, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

unitsize(1cm);
defaultpen(fontsize(10));

vertex[] v = {
	      vertex(( 0,   0),	  "\(d\)"),
	      vertex((-0.2, 2),	  "\(z\)"),
	      vertex(( 1.2, 4),	  "\(a\)"),
	      vertex(( 2,   1.5), "\(c\)"),
	      vertex(( 3,   2.5), "\(b\)")
	     };

v[0].dir = v[0] - v[2];
v[1].dir = (v[1] - v[4]) + (v[1] - v[0]);
v[2].dir = v[2] - v[0];
v[3].dir = v[3] - v[0];
v[4].dir = v[4] - v[1];

DrawGraph(v, new edge[]);

draw(v[0].p{WNW} .. {N}v[1].p);
draw(v[0].p{NE} .. (4 * v[3].p + 2 * v[1].p + v[0]) / 7 .. {ENE}v[2].p);
draw(v[0].p{E} .. v[3].p);
draw(v[1].p{NE} .. {curl 0}v[4].p);
