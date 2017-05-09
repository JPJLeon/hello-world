/* paths.asy*/

/* Copyright (c) 2012-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graphs;

unitsize(1cm);
defaultpen(fontsize(10));

vertex[] V2 = {vertex((0, 0)), vertex((1, 0))};
edge[]	 E2 = {edge(0, 1)};

DrawGraph(V2, E2);

shipout("images/P2");

erase();

vertex[] V3 = {vertex((0, 0.1))};
V3.push(vertex(V3[0] + unit((1,	 0.4))));
V3.push(vertex(V3[1] + unit((1, -0.6))));

edge[]	 E3 = {edge(0, 1), edge(1, 2)};

DrawGraph(V3, E3);

shipout("images/P3");

erase();

vertex[] V4 = {vertex((0, 0))};
V4.push(vertex(V4[0] + unit((1, -0.4))));
V4.push(vertex(V4[1] + unit((1,	 0.5))));
V4.push(vertex(V4[2] + unit((1, -0.3))));

edge[]	 E4 = {edge(0, 1), edge(1, 2), edge(2, 3)};

DrawGraph(V4, E4);

shipout("images/P4");

erase();

vertex[] V5 = {vertex((0, 0))};
V5.push(vertex(V5[0] + unit(( 1, -0.2))));
V5.push(vertex(V5[1] + unit((-1,  2.0))));
V5.push(vertex(V5[2] + unit((-1, -0.2))));
V5.push(vertex(V5[3] + unit((-1, -2.0))));

edge[]	 E5 = {edge(0, 1), edge(1, 2), edge(2, 3), edge(3, 4)};

DrawGraph(V5, E5);

shipout("images/P5");
