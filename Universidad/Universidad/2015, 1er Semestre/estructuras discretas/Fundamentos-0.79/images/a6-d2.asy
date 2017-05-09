/* a6-d2.asy*/

/* Copyright (c) 2009 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graphs;

unitsize(1cm);

vertex[] V;
edge[] E;

int i;

pair[] dd = {dir( 23) * (1 - 0.0609173),
	     dir(352) * (1 + 0.0420617),
	     dir( 13) * (1 - 0.0800231),
	     dir(354) * (1 + 0.0923749),
	     dir( 16) * (1 - 0.0136814)};

pair cp = (0, 0);
V.push(cp);
for(i = 0; i < dd.length; ++i) {
  cp += dd[i];
  V.push(cp);
  E.push(edge(i, i + 1));
}

DrawGraph(V, E);
