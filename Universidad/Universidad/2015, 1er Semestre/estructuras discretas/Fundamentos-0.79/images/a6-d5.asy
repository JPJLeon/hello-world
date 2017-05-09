/* a6-d5.asy*/

/* Copyright (c) 2009, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graphs;

unitsize(1cm);

vertex[] V = {(0, 0),
	      dir( 31) * (1 + 0.1952043),
	      dir(117) * (1 - 0.0920123),
	      dir(168) * (1 + 0.1701390),
	      dir(234) * (1 + 0.1976569),
	      dir(340) * (1 - 0.0509405)};

edge[] E = {edge(0, 1),
	    edge(0, 2),
	    edge(0, 3),
	    edge(0, 4),
	    edge(0, 5)};

DrawGraph(V, E);
