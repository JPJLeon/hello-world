/* isomorfo-a.asy*/

/* Copyright (c) 2009, 2011-2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

unitsize(1cm);
defaultpen(fontsize(10));

vertex[] v;

pair start = (0, 1.3 / (2 * sin(pi / 6))), r = expi(pi / 3);
int i;

v.push(vertex(start, "$a$", start));
for(i = 1; i < 6; ++i) {
  v.push(vertex(start *= r, label = format("$%x$", 16 - i), dir = start));
}

edge[] e;

for(i = 0; i < 6 - 1; ++i)
  e.push(edge(i, i + 1));
e.push(edge(0, 5));

for(i = 0; i < 6 / 2; ++i)
  e.push(edge(i, i + 3));

DrawGraph(v, e);
