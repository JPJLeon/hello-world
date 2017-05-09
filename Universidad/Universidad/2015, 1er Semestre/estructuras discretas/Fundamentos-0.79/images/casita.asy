/* casita.asy*/

/* Copyright (c) 2009-2010, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graphs;

unitsize(1cm);

vertex[] v = {(0, 0),
	      (2, 0),
	      (2, 1.6),
	      (1, 2.5),
	      (0, 1.6)};

edge[] e = {edge(0, 1),
	    edge(0, 2),
	    edge(0, 4),
	    edge(1, 2),
	    edge(1, 4),
	    edge(2, 3),
	    edge(2, 4),
	    edge(3, 4)};

DrawGraph(v, e);
