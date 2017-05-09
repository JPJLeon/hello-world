/* ciclo-impar.asy*/

/* Copyright (c) 2009-2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

include graphs;

unitsize(1cm);
defaultpen(fontsize(10));

vertex[] v = {vertex((-1.2, 0),	  Red),
	      vertex(( 1.2, 0),	  Red),
	      vertex(( 0,   3.9), Red)};

path p = v[0].p .. v[2].p;

v.push(vertex(relpoint(p, 1.2 / (1.2 + 1.5 + 1.2)),	     Blue));
v.push(vertex(relpoint(p, (1.2	+ 1.5) / (1.2 + 1.5 + 1.2)), Blue));

p = v[1].p .. v[2].p;

v.push(vertex(relpoint(p, 1.2 / (1.2 + 1.5 + 1.2)),	     Blue));
v.push(vertex(relpoint(p, (1.2	+ 1.5) / (1.2 + 1.5 + 1.2)), Blue));

edge[] e = {edge(0, 1, "\(1\)", S),
	    edge(0, 3),
	    edge(3, 4, dashed, "\(l\)", N),
	    edge(4, 2),
	    edge(1, 5),
	    edge(5, 6, dashed, "\(l\)", S),
	    edge(6, 2)};

DrawGraph(v, e);
