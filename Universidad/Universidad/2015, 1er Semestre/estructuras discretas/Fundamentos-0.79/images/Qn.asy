/* Qn.asy*/

/* Copyright (c) 2010, 2012-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

unitsize(1cm);
defaultpen(fontsize(10));

vertex[] v;
edge[] e;

real scale;
pair start, r = expi(pi / 2);

int i;

erase();
scale = 1.2;

start = expi(pi / 4) * scale;

v.push(start);
for(i = 1; i < 4; ++i)
  v.push(start *= r);

for(i = 0; i < 4 - 1; ++i)
    e.push(edge(i, i + 1));
e.push(edge(4 - 1, 0));

DrawGraph(v, e);

label("00", v[1], 1.8 * NW);
label("01", v[2], 1.8 * SW);
label("11", v[3], 1.8 * SE);
label("10", v[0], 1.8 * NE);

shipout("images/Q2");

erase();

scale = 1;

v = new vertex[]; e = new edge[];

start = expi(pi / 4) * scale;

v.push(start);
for(i = 1; i < 4; ++i)
  v.push(start *= r);

for(i = 0; i < 4 - 1; ++i)
  e.push(edge(i, i + 1));
e.push(edge(4 - 1, 0));

scale = 2.6;

start = expi(pi / 4) * scale;

v.push(start);
for(i = 1; i < 4; ++i)
  v.push(start *= r);

for(i = 4; i < 8 - 1; ++i)
  e.push(edge(i, i + 1));
e.push(edge(4, 7));

for(i = 0; i < 4; ++i)
  e.push(edge(i, i + 4));

label("100", v[1], 2.2 * WSW);
label("101", v[2], 2.2 * WNW);
label("111", v[3], 2.2 * ENE);
label("110", v[0], 2.2 * ESE);
label("000", v[5], 1.8 * NW);
label("001", v[6], 1.8 * SW);
label("011", v[7], 1.8 * SE);
label("010", v[4], 1.8 * NE);

DrawGraph(v, e);
shipout("images/Q3");
