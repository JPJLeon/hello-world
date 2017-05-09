/* a6-d3b.asy*/

/* Copyright (c) 2009, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graphs;

unitsize(1cm);

pair[] dd = {dir(338) * (0.85 + 0.1705600),
	     dir( 26) * (0.85 + 0.0482237),
	     dir(351) * (0.85 + 0.0951711),
	     dir( 31) * (0.85 + 0.0690833),
	     dir(103) * (0.85 - 0.0538758)};

vertex[] V;
edge[] E;

int i;

pair cp = (0,0);
V.push(cp);
for(i = 0; i < dd.length - 1; ++i) {
  cp += dd[i];
  V.push(cp);
  E.push(edge(i, i + 1));
};
V.push(V[2] + dd[4]);
E.push(edge(2, 5));

DrawGraph(V, E);
