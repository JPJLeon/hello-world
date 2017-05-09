/* automorfismo.asy*/

/* Copyright (c) 2009-2010, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

unitsize(1cm);
defaultpen(fontsize(10));

vertex[] v;
edge[] e;

int i;

int sides;

void BuildV(int n)
{
  real scale = 1.5 / (2 * sin(pi / n));
  pair start, r = expi(2 * pi / n);
  int i;

  if(n % 2 == 1) {
    start = (0, 1) * scale;
  }
  else if(n % 4 != 0) {
    start = (1, 0) * scale;
  }
  else {
    start = expi(pi / n) * scale;
  }

  v.push(start);
  for(i = 1; i < n; ++i)
    v.push(start *= r);
}

BuildV(6);

for(i = 0; i < 6; ++i) {
  v[i].label = format("%d", (7 - i) % 6 + 1);
  v[i].dir = v[i];
}

for(i = 0; i < 6 - 1; ++i)
  e.push(edge(i, i + 1));
e.push(edge(5, 0));

e.push(edge(1, 3));
e.push(edge(3, 5));
e.push(edge(5, 1));

DrawGraph(v, e);
