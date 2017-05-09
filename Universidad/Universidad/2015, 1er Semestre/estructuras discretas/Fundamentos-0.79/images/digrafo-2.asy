/* digrafo-2.asy*/

/* Copyright (c) 2009-2010, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graphs;

unitsize(1cm);

vertex[] v = {(0,   1),
	      (1,   0),
	      (1.4, 2.1),
	      (0.3, 3),
	      (1.9, 3.5)};

edge[] e = {edge(0, 0, WSW),
	    edge(0, 2),
	    edge(1, 0),
	    edge(0, 3),
	    edge(2, 3),
	    edge(2, 4),
	    edge(4, 2),
	    edge(4, 3)};

DrawGraph(v, e, true);
