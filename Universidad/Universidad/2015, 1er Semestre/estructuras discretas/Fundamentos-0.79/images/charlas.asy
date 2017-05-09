/* charlas.asy*/

/* Copyright (c) 2009-2010, 2012-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

unitsize(1cm);


int sides;

int i;

vertex[] v;

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

edge[] e = {edge(0, 4),
	    edge(1, 2),
	    edge(1, 3),
	    edge(2, 3),
	    edge(2, 5),
	    edge(3, 4),
	    edge(4, 5)};

BuildV(6);

erase();
unitsize(1cm);

defaultpen(fontsize(10));
currentpen = Black;

v[0].label = "\(v_3\)";
v[1].label = "\(v_2\)";
v[2].label = "\(v_1\)";
v[3].label = "\(v_6\)";
v[4].label = "\(v_5\)";
v[5].label = "\(v_4\)";

for(i = 0; i < v.length; ++i)
  v[i].dir = v[i];

DrawGraph(v, e);

shipout("images/charlas");

erase();

v[0].color = Blue;
v[1].color = Red;
v[2].color = Blue;
v[3].color = ForestGreen;
v[4].color = Yellow;
v[5].color = Red;

DrawGraph(v, e);

shipout("images/charlas-coloreo1");

erase();

v[0].color = Red;
v[1].color = Red;
v[2].color = Blue;
v[3].color = Yellow;
v[4].color = Blue;
v[5].color = Yellow;

DrawGraph(v, e);

shipout("images/charlas-coloreo2");
