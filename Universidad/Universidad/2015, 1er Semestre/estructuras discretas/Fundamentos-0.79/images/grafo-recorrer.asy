/* grafo-recorrer.asy*/

/* Copyright (c) 2009-2010, 2012-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

int i, j;

unitsize(1cm);
defaultpen(fontsize(10));

real scale = 1.3;

vertex[] v = {(0,    0),
	      (1,    1.7),
	      (2,    2),
	      (4,    0),
	      (1.2, -1.3),
	      (3.7,  2),
	      (4.8,  3),
	      (5,    1),
	      (4.2, -1),
	      (2.8, -2),
	      (3,    3.7),
	      (1.3,  2.5)};

edge[] e = {edge( 0,  1),
	    edge( 0,  3),
	    edge( 0,  4),
	    edge( 1,  2),
	    edge( 2,  3),
	    edge( 2,  5),
	    edge( 3,  4),
	    edge( 3,  5),
	    edge( 3,  7),
	    edge( 3,  8),
	    edge( 4,  8),
	    edge( 4,  9),
	    edge( 5,  6),
	    edge( 5,  7),
	    edge( 6, 10),
	    edge( 8,  9),
	    edge(10, 11)};

edge[] ed = {edge( 0,  1),
	     edge( 1,  2),
	     edge( 2,  5),
	     edge( 3,  4),
	     edge( 3,  7),
	     edge( 3,  8),
	     edge( 5,  6),
	     edge( 5,  7),
	     edge( 6, 10),
	     edge( 8,  9),
	     edge(10, 11)};

edge[] eb = {edge( 0,  1),
	     edge( 0,  4),
	     edge( 2,  3),
	     edge( 3,  4),
	     edge( 3,  5),
	     edge( 3,  7),
	     edge( 4,  8),
	     edge( 4,  9),
	     edge( 5,  6),
	     edge( 6, 10),
	     edge(10, 11)};

erase();

DrawGraph(v, e);

shipout("images/grafo-recorrer");

erase();

for(i = 0; i < e.length; ++i)
  e[i].color = grey;

for(i = 0; i < e.length; ++i)
  for(j = 0; j < ed.length; ++j)
    if(e[i].a == ed[j].a && e[i].b == ed[j].b) {
      e[i].color = Red + 1.5;
      break;
    }

v[ 4].label =  "1"; v[ 4].dir = SW;
v[ 3].label =  "2"; v[ 3].dir = ESE;
v[ 7].label =  "3"; v[ 7].dir = E;
v[ 5].label =  "4"; v[ 5].dir = NNW;
v[ 6].label =  "5"; v[ 6].dir = E;
v[10].label =  "6"; v[10].dir = N;
v[11].label =  "7"; v[11].dir = NW;
v[ 2].label =  "8"; v[ 2].dir = N;
v[ 1].label =  "9"; v[ 1].dir = NW;
v[ 0].label = "10"; v[ 0].dir = W;
v[ 8].label = "11"; v[ 8].dir = ESE;
v[ 9].label = "12"; v[ 9].dir = S;

DrawGraph(v, e);

shipout("images/grafo-recorrer-dfs");

erase();

for(i = 0; i < e.length; ++i)
  e[i].color = grey;

for(i = 0; i < e.length; ++i)
  for(j = 0; j < eb.length; ++j)
    if(e[i].a == eb[j].a && e[i].b == eb[j].b) {
      e[i].color = Red + 1.5;
      break;
    }

v[ 4].label =  "1";
v[ 3].label =  "2";
v[ 9].label =  "3";
v[ 8].label =  "4";
v[ 0].label =  "5";
v[ 2].label =  "6";
v[ 7].label =  "7";
v[ 5].label =  "8";
v[ 1].label =  "9";
v[ 6].label = "10";
v[10].label = "11";
v[11].label = "12";

DrawGraph(v, e);

shipout("images/grafo-recorrer-bfs");
