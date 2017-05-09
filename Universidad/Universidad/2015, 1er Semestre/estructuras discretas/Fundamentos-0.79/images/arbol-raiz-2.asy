/* arbol-raiz-2.asy*/

/* Copyright (c) 2009, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graphs;

unitsize(1cm);

vertex[] V = {(0, 0),
	      dir(111) * (1 - 0.0316309),
	      dir(235) * (1 + 0.1592290),
	      vertex(dir( 27) * (1 - 0.1043900), White),
	      dir( 27) * (1 + 0.1043900)
	       + dir(340) * (1 - 0.0994970),
	      dir( 27) * (1 + 0.1443900)
	       + dir(322) * (1 - 0.0994970)
	       + dir( 21) * (1 + 0.0740078),
	      dir( 27) * (1 + 0.1443900)
	       + dir(322) * (1 - 0.0994970)
	       + dir( 83) * (1 + 0.0987653)};

edge[] E = {edge(0, 1),
	    edge(0, 2),
	    edge(0, 3),
	    edge(3, 4),
	    edge(4, 5),
	    edge(4, 6)};

DrawGraph(V, E);
