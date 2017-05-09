/* isomorfo-b.asy*/

/* Copyright (c) 2009-2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

unitsize(1cm);
defaultpen(fontsize(10));

int i, j;
real scale = 1.3;

vertex[] v;

for(i = 0; i < 3; ++i) {
  v.push(vertex((0,   i) * scale, format("$%x$", 10 + 2 * i), W));
  v.push(vertex((1.2, i) * scale, format("$%x$", 11 + 2 * i), E));
}

edge[] e;

for(i = 0; i < 3; ++i)
  for(j = 0; j < 3; ++j)
    e.push(edge(2 * i, 2 * j + 1));

DrawGraph(v, e);
