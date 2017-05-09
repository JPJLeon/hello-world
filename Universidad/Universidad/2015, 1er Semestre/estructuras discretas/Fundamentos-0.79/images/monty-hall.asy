/* monty-hall.asy*/

/* Copyright (c) 2015 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

unitsize(1cm);
defaultpen(fontsize(10));

vertex[] V;
edge[] Edge;

V.push(vertex((0,  0), "A", NW));

V.push(vertex((2,  3), "A"));
V.push(vertex((2,  0), "B"));
V.push(vertex((2, -3), "C"));

V.push(vertex((4,  4), "B"));
V.push(vertex((4,  2), "C"));
V.push(vertex((4,  0), "C"));
V.push(vertex((4, -3), "B"));

Edge.push(edge(0, 1, "\(1/3\)"));
Edge.push(edge(0, 2, "\(1/3\)"));
Edge.push(edge(0, 3, "\(1/3\)"));

Edge.push(edge(1, 4, "\(1/2\)"));
Edge.push(edge(1, 5, "\(1/2\)"));

Edge.push(edge(2, 6, "\(1\)"));

Edge.push(edge(3, 7, "\(1\)"));

label("\(1/18\)", V[4] + E);
label("\(1/18\)", V[5] + E);
label("\(1/9\)",  V[6] + E);
label("\(1/9\)",  V[7] + E);

DrawGraph(V, Edge);
