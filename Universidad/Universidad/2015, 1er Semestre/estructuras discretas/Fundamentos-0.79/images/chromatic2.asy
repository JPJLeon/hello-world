/* chromatic2.asy*/

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

erase();

for(i = 0; i < 6 - 1; ++i)
  e.push(edge(i, i + 1));
e.push(edge(0, 5));

e.push(edge(0, 2));
e.push(edge(0, 3));
e.push(edge(0, 4));
e.push(edge(1, 5));
e.push(edge(2, 4));

DrawGraph(v, e);

shipout("images/chromatic2");

erase();

edge[] e = {edge(0, 1, Gray),
	    edge(0, 2, Gray),
	    edge(0, 4, Gray),
	    edge(1, 2, Gray),
	    edge(1, 5, Gray),
	    edge(3, 4, Gray),

	    edge(0, 3, Red + 1.5),
	    edge(0, 5, Red + 1.5),
	    edge(2, 3, Red + 1.5),
	    edge(2, 4, Red + 1.5),
	    edge(4, 5, Red + 1.5)};

DrawGraph(v, e);

shipout("images/chromatic2-C5");

erase();

edge[] e = {edge(0, 1, Gray),
	    edge(0, 5, Gray),
	    edge(1, 2, Gray),
	    edge(1, 5, Gray),
	    edge(4, 5, Gray),

	    edge(0, 2, Blue + 1.5),
	    edge(0, 3, Blue + 1.5),
	    edge(0, 4, Blue + 1.5),
	    edge(2, 3, Blue + 1.5),
	    edge(2, 4, Blue + 1.5),
	    edge(3, 4, Blue + 1.5)};

DrawGraph(v, e);

shipout("images/chromatic2-K4");

v = new vertex[]; e = new edge[];
BuildV(6);

erase();

for(i = 0; i < 6 - 1; ++i)
  e.push(edge(i, i + 1));
e.push(edge(0, 5));

e.push(edge(0, 2));
e.push(edge(0, 3));
e.push(edge(0, 4));
e.push(edge(1, 5));
e.push(edge(2, 4));

v[0].color = Red;
v[1].color = Yellow;
v[2].color = Blue;
v[3].color = White;
v[4].color = Yellow;
v[5].color = White;

DrawGraph(v, e);

shipout("images/chromatic2-coloreo");
