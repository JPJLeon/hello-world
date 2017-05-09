/* arbol-raiz-1.asy*/

/* Copyright (c) 2009, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graphs;

unitsize(1cm);

vertex[] V = {vertex((0, 0), White),
	      dir(127) * (1 + 0.0216309),
	      dir(235) * (1 - 0.1692290),
	      dir(333) * (1 + 0.1443900),
	      dir(333) * (1 - 0.1443900)
	       + dir( 27) * (1 + 0.0964970),
	      dir(333) * (1 - 0.1443900)
	       + dir( 37) * (1 + 0.0964970)
	       + dir(339) * (1 - 0.0740078),
	      dir(333) * (1 - 0.1443900)
	       + dir( 37) * (1 + 0.0964970)
	       + dir(283) * (1 - 0.1010102)};

edge[] E = {edge(0, 1),
	    edge(0, 2),
	    edge(0, 3),
	    edge(3, 4),
	    edge(4, 5),
	    edge(4, 6)};

DrawGraph(V, E);
