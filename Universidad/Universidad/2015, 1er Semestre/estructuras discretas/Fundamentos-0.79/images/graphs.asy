/* graphs.asy*/

/* Copyright (c) 2009, 2012-2013 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import texcolors;
import graph;

struct vertex {
  pair p;
  pen color;
  string label;
  pair dir;

  void operator init(pair p, pen color = Black, string label ="", pair dir = N)
  {
    this.p = p;
    this.color = color;
    this.label = label;
    this.dir = dir;
  }
}

vertex operator cast(pair p)
{
  return vertex(p);
}

pair operator cast(vertex v)
{
  return v.p;
}

struct edge {
  int a, b;
  path pt;
  pen color;
  string label;
  pair dir;

  void operator init(int a, int b,
		     pen color = Black, string label = "", pair dir = N)
  {
    this.a = a; this.b = b;
    this.color = color;
    this.label = label;
    this.dir = dir;
  }
}

pair pm(pair p1, pair p2)
{
  real l = abs(p2 - p1);

  return (p1 + p2) / 2 + (0, 1) * unit(p2 - p1) * 0.30 * l / (1 + 0.7 * l);
}

void CalcGraph(vertex[] V, edge[] E,
	       bool digraph = false, real vertexsize = 0.15)
{
  int i, j;
  pair p1, p2;
  path pt;
  bool done[];

  for(i = 0; i < E.length; ++i)
    done.push(false);

  for(i = 0; i < E.length; ++i) {
    if(E[i].a == E[i].b) {
      pair p = V[E[i].a];

      pt = p {curl 0.05} .. p + unit(E[i].dir) * 1.2 .. {curl 0.05} p;
      pt = cut(pt, circle(p, vertexsize), 0).after;
      pt = cut(pt, circle(p, vertexsize), 1).before;
      E[i].pt = pt;
    }
    else {
      if(!done[i]) {
	done[i] = true;
	p1 = V[E[i].a];
	p2 = V[E[i].b];
	for(j = i + 1; j < E.length; ++j)
	  if(E[i].a == E[j].b && E[i].b == E[j].a)
	    break;
	if(j != E.length) {
	  done[j] = true;
	  pair pa = pm(p1, p2), pb = pm(p2, p1);

	  pt = p1 .. pa .. p2;
	  pt = cut(pt, circle(p1, vertexsize), 0).after;
	  pt = cut(pt, circle(p2, vertexsize), 1).before;
	  E[i].pt = pt;

	  pt = p2 .. pb .. p1;
	  pt = cut(pt, circle(p2, vertexsize), 0).after;
	  pt = cut(pt, circle(p1, vertexsize), 1).before;
	  E[j].pt = pt;
	}
	else {
	  pt = p1 -- p2;
	  pt = cut(pt, circle(p1, vertexsize), 0).after;
	  pt = cut(pt, circle(p2, vertexsize), 1).before;
	  E[i].pt = pt;
	}
      }
    }
  }
}

void JustDrawGraph(picture pic = currentpicture, vertex V[], edge E[],
	       bool digraph = false, real vertexsize = 0.15,
	       real vsep = 0.25, real esep = 0.30)
{
  int i;
  pair pos;

  arrowfactor = 9;

  arrowhead Head = HookHead(0, 4);

  if(digraph)
     for(i = 0; i < E.length; ++i)
       draw(E[i].pt, E[i].color, Arrow(Head));
  else
     for(i = 0; i < E.length; ++i)
       draw(E[i].pt, E[i].color);

  for(i = 0; i < E.length; ++i) {
    if(straight(E[i].pt, 0))
      pos = (V[E[i].a] + V[E[i].b]) / 2
		+ esep * unit(E[i].dir * (V[E[i].b] - V[E[i].a]));
    else
      pos = point(E[i].pt, 1) + esep * unit(N * (V[E[i].b] - V[E[i].a]));
    label(E[i].label, pos, basealign);
  }

  for(i = 0; i < V.length; ++i) {
    filldraw(circle(V[i], vertexsize),
	 fillpen = V[i].color, drawpen = Black + 1);
    label(V[i].label, V[i] + (vsep + vertexsize) * unit(V[i].dir), basealign);
  }
}

void DrawGraph(picture pic = currentpicture, vertex V[], edge E[],
	       bool digraph = false, real vertexsize = 0.15,
	       real vsep = 0.25, real esep = 0.30)
{
  CalcGraph(V, E, vertexsize);
  JustDrawGraph(pic, V, E, digraph, vertexsize, vsep, esep);
}
