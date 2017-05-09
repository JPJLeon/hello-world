/* a6-d4.asy*/

/* Copyright (c) 2009, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graphs;

unitsize(1cm);

vertex[] V = {(0, 0),
	      dir( 34) * (1 + 0.08352800),
	      dir(111) * (1 - 0.00105454),
	      dir(197) * (1 + 0.02494750),
	      dir(303) * (1 - 0.17056000),
	      dir( 34) * (1 + 0.08352800) + dir(349) * (1 + 0.0509405)};

edge[] E = {edge(0, 1),
	    edge(0, 2),
	    edge(0, 3),
	    edge(0, 4),
	    edge(1, 5)};

DrawGraph(V, E);
