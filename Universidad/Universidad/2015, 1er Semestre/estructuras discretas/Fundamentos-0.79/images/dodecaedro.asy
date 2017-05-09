/* dodecaedro.asy*/

/* Copyright (c) 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graphs;

unitsize(1cm);

vertex[] V;
edge[] E;

pair r = expi(2 * pi / 5);
int i;

pair c = 0.7 * unit((0, -1));
for(i = 0; i < 5; ++i) {
	V.push(c);
	c *= r;
}

pair cc = 1.35 * unit((0, -1)),
     ce = 1.9 * expi(-3 * pi / 10);
for(i = 0; i < 5; ++i) {
	V.push(cc); V.push(ce);
	cc *= r; ce *= r;
}

c = 2.8 * expi(-3 * pi / 10);
for(i = 0; i < 5; ++i) {
	V.push(c);
	c *= r;
}

for(i = 0; i < 5; ++i) {
	E.push(edge(i, (i + 1) % 5));
	E.push(edge(15 + i, 15 + (i + 1) % 5));
}

for(i = 0; i < 5; ++i) {
	E.push(edge(i, 5 + 2 * i ));
	E.push(edge(6 + 2 * i, 15 + i));
	E.push(edge(5 + 2 * i, 5 + (2 * i + 9) % 10));
	E.push(edge(5 + 2 * i, 5 + 2 * i + 1));
}

DrawGraph(V, E);
