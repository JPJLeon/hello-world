/* chromatic1.asy*/

/* Copyright (c) 2012-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graphs;

unitsize(1cm);

vertex[] v;
edge[] e;

int i;

void BuildV(int n)
{
  real scale = 1.5 / (2 * sin(pi / n));
  pair start, r = expi(2 * pi / n);
  int i;

  start = (0, 1) * scale;

  v.push(start);
  for(i = 1; i < n; ++i)
    v.push(start *= r);
}

v = new vertex[]; e = new edge[];
BuildV(8);

erase();

for(i = 0; i < 8 - 1; ++i)
  e.push(edge(i, i + 1));
e.push(edge(0, 7));

for(i = 0; i < 8 / 2; ++i)
  e.push(edge(i, i + 4));

DrawGraph(v, e);

shipout("images/chromatic1");

erase();

e = new edge[];

for(i = 4; i < 8 - 1; ++i)
  e.push(edge(i, i + 1, Gray));
e.push(edge(0, 7, Gray));

for(i = 1; i < 8 / 2; ++i)
  e.push(edge(i, i + 4, Gray));

e.push(edge(0, 1, Red + 1.5));
e.push(edge(0, 4, Red + 1.5));
e.push(edge(1, 2, Red + 1.5));
e.push(edge(2, 3, Red + 1.5));
e.push(edge(3, 4, Red + 1.5));

DrawGraph(v, e);

shipout("images/chromatic1-ciclo");

erase();

for(i = 0; i < e.length; ++i)
  e[i].color = Black;

v[0].color = Blue;
v[1].color = Red;
v[2].color = Blue;
v[3].color = Red;
v[4].color = Yellow;
v[5].color = Blue;
v[6].color = Red;
v[7].color = Yellow;

DrawGraph(v, e);

shipout("images/chromatic1-coloreo");
