/* example-graphs.asy*/

/* Copyright (c) 2010-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

unitsize(1cm);
defaultpen(fontsize(10));

vertex[] V;
edge[] E;

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

  V.push(start);
  for(i = 1; i < n; ++i)
    V.push(start *= r);
}

void BuildC(int n)
{
  int i;

  BuildV(n);

  for(i = 0; i < n - 1; ++i)
    E.push(edge(i, i + 1));
  E.push(edge(n - 1, 0));
}

void BuildW(int n)
{
  int i;

  BuildC(n - 1);

  V.push((0, 0));
  for(i = 0; i < n - 1; ++i)
    E.push(edge(i, n - 1));
}

void BuildK(int n)
{
  int i, j;

  BuildV(n);

  for(i = 0; i < n; ++i)
    for(j = i + 1; j < n; ++j)
      E.push(edge(i, j));
}

for(sides = 3; sides <= 6; ++sides) {
  erase();
  V = new vertex[]; E = new edge[];
  BuildC(sides);
  DrawGraph(V, E);
  shipout(format("images/C%1d", sides));

  erase();
  V = new vertex[]; E = new edge[];
  BuildW(sides + 1);
  DrawGraph(V, E);
  shipout(format("images/W%1d", sides + 1));

  erase();
  V = new vertex[]; E = new edge[];
  BuildK(sides);
  DrawGraph(V, E);
  shipout(format("images/K%1d", sides));
}

erase();

V = new vertex[]; E = new edge[];
BuildC(9);
V.push(vertex((0, 0)));
E.push(edge(0, 9)); E.push(edge(3, 9)); E.push(edge(6, 9));

draw(V[1].p .. (0.33 * V[3].p + 0.66 * V[9].p) .. V[5].p);
draw(V[2].p .. (0.33 * V[0].p + 0.66 * V[9].p) .. V[7].p);
draw(V[4].p .. (0.33 * V[6].p + 0.66 * V[9].p) .. V[8].p);

V[0].label = "\(a\)"; V[0].dir = V[0];
V[8].label = "\(b\)"; V[8].dir = V[8];
V[7].label = "\(c\)"; V[7].dir = V[7];
V[6].label = "\(d\)"; V[6].dir = V[6];
V[5].label = "\(e\)"; V[5].dir = V[5];
V[4].label = "\(f\)"; V[4].dir = V[4];
V[3].label = "\(g\)"; V[3].dir = V[3];
V[2].label = "\(h\)"; V[2].dir = V[2];
V[1].label = "\(i\)"; V[1].dir = V[1];
V[9].label = "\(j\)"; V[9].dir = NW;

DrawGraph(V, E);

draw(V[1].p .. (0.33 * V[3].p + 0.66 * V[9].p) .. V[5].p);
draw(V[2].p .. (0.33 * V[0].p + 0.66 * V[9].p) .. V[7].p);
draw(V[4].p .. (0.33 * V[6].p + 0.66 * V[9].p) .. V[8].p);

shipout("images/Petersen1");

erase();

V = new vertex[]; E = new edge[];
int i;

BuildC(5);
for(i = 0; i < 5; ++i)
  V[i] *= 1.8;
BuildC(5);
for(i = 0; i < 5 - 1; ++i)
  E.push(edge(i, i + 1));

for(i = 0; i < 5; ++i)
  E.push(edge(i, i + 5));

for(i = 5; i < 10; ++i)
  E.push(edge(i, (i + 2) % 5 + 5));

V[0].label = "\(a\)"; V[0].dir = V[0];
V[4].label = "\(b\)"; V[4].dir = V[4];
V[3].label = "\(c\)"; V[3].dir = V[3];
V[8].label = "\(d\)"; V[8].dir = V[9] - V[7];
V[6].label = "\(e\)"; V[6].dir = V[5] - V[7];
V[9].label = "\(f\)"; V[9].dir = V[5] - V[8];
V[7].label = "\(g\)"; V[7].dir = V[6] - V[8];
V[2].label = "\(h\)"; V[2].dir = V[2];
V[1].label = "\(i\)"; V[1].dir = V[1];
V[5].label = "\(j\)"; V[5].dir = NE;

DrawGraph(V, E);

shipout("images/Petersen2");
