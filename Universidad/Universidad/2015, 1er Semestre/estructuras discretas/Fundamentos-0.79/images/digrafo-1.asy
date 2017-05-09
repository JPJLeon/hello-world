/* digrafo-1.asy*/

/* Copyright (c) 2009-2010, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graphs;

unitsize(1cm);

vertex[] v = {(-0.3, 3),
	      ( 0.8, 0.5),
	      ( 2.0, 1.5),
	      ( 1.4, 3.5),
	      ( 3.5, 2.2)};

edge[] e = {edge(0, 1),
	    edge(0, 3),
	    edge(1, 2),
	    edge(2, 0),
	    edge(2, 3),
	    edge(4, 2)};

DrawGraph(v, e, true);
