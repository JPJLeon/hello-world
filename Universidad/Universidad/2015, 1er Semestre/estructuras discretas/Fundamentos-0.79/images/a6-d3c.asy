/* a6-d3c.asy*/

/* Copyright (c) 2009, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graphs;

unitsize(1cm);

pair[] dd = {dir(123) * (0.85 + 0.0444253),
	     dir(223) * (0.85 - 0.1246300),
	     dir( 17) * (0.85 + 0.2686620),
	     dir( 75) * (0.85 - 0.0533956),
	     dir(337) * (0.85 + 0.0951711)};

vertex[] V = {(0, 0),
	      dd[0],
	      dd[1],
	      dd[2],
	      dd[2] + dd[3],
	      dd[2] + dd[4]};

edge[] E ={edge(0, 1),
	   edge(0, 2),
	   edge(0, 3),
	   edge(3, 4),
	   edge(3, 5)};

DrawGraph(V, E);
