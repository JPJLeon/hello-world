/* a6-d3a.asy*/

/* Copyright (c) 2009, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graphs;

unitsize(1cm);

vertex[] V = {(0, 0),
	      dir(130) * (0.85 - 0.0216309),
	      dir(235) * (0.85 + 0.1692290),
	      dir(342) * (0.85 - 0.1443900),
	      dir(342) * (0.85 + 0.1443900)
	       + dir( 27) * (0.85 - 0.0964970),
	      dir(342) * (0.85 + 0.1443900)
	       + dir( 27) * (0.85 - 0.0964970)
	       + dir(349) * (0.85 + 0.0740078)};

edge[] E = {edge(0, 1),
	    edge(0, 2),
	    edge(0, 3),
	    edge(3, 4),
	    edge(4, 5)};

DrawGraph(V, E);
