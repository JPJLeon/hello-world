/* Euler-formula.asy*/

/* Copyright (c) 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

unitsize(1cm);

/* Randomly created points in [0, 5] x [0, 5], tweaked for distribution */

vertex[] v = {
	       vertex((3.76, 1.73)),  /* 0 */
	       vertex((0.43, 0.31)),  /* 1 */
	       vertex((3.28, 3.27)),  /* 2 */
	       vertex((0.29, 3.07)),  /* 3 */
	       vertex((1.28, 0.01)),  /* 4 */
	       vertex((2.83, 4.90)),  /* 5 */
	       vertex((4.50, 4.59)),  /* 6 */
	       vertex((1.63, 4.74)),  /* 7 */
	       vertex((1.77, 2.98)),  /* 8 */
	       vertex((2.72, 0.91))   /* 9 */
	     };

/* Make a planar graph G over the vertices above */

edge[] e = {
	     edge(0, 2),
	     edge(0, 9),
	     edge(1, 3),
	     edge(1, 4),
	     edge(2, 6),
	     edge(2, 5),
	     edge(2, 8),
	     edge(3, 7),
	     edge(3, 8),
	     edge(3, 9),
	     edge(4, 9),
	     edge(5, 6),
	     edge(5, 7),
	     edge(8, 9)
	  };

/* Make spanning tree of G */

edge[] est = {
	       edge(0, 2),
	       edge(0, 9),
	       edge(1, 3),
	       edge(1, 4),
	       edge(2, 5),
	       edge(2, 6),
	       edge(4, 9),
	       edge(5, 7),
	       edge(8, 9)
	     };

int i;

for(i = 0; i < est.length; ++i)
  est[i].color = Yellow + 4;

DrawGraph(v, est); /* Spanning tree edges... */
DrawGraph(v, e);   /* ... then G	     */



/* Vertices of G* are the faces, place them at the centers */

vertex[] vstar = {
		   vertex((v[0] + v[2] + v[8] + v[9]) / 4, White),  /* a */
		   vertex((v[1] + v[3] + v[4] + v[9]) / 4, White),  /* b */
		   vertex((v[2] + v[3] + v[5] + v[7] + v[8]) / 5, White),
								    /* c */
		   vertex((v[2] + v[5] + v[6]) / 3, White),	    /* d */
		   vertex((v[3] + v[8] + v[9]) / 3, White),	    /* e */
		   vertex((5.45, 1.67), White)			    /* f */
		 };

/* Arcs of G* pass through the midpoints of arcs of G,
   tweak them so they don't intersect by one extra control point */

/* ac: 2-8 */
draw(vstar[0].p ..(v[2] + v[8]) / 2 .. vstar[2].p, Yellow + 4);
draw(vstar[0].p ..(v[2] + v[8]) / 2 .. vstar[2].p, dashed);

/* ae: 8-9 */
draw(vstar[0].p ..(v[8] + v[9]) / 2 .. vstar[4].p, dashed);

/* af: 0-2 */
draw(vstar[0].p ..(v[0] + v[2]) / 2 .. vstar[5].p, dashed);

/* af: 0-9 */
draw(vstar[0].p ..(v[0] + v[9]) / 2 .. vstar[5].p, dashed);

/* be: 3-9 */
draw(vstar[1].p ..(v[3] + v[9]) / 2 .. vstar[4].p, Yellow + 4);
draw(vstar[1].p ..(v[3] + v[9]) / 2 .. vstar[4].p, dashed);

/* bf: 1-3 */
draw(vstar[1].p ..(v[1] + v[3]) / 2 .. ( 3.7, -1.3) .. vstar[5].p, dashed);

/* bf: 1-4 */
draw(vstar[1].p ..(v[1] + v[4]) / 2 .. ( 2.5, -1.0) .. vstar[5].p, dashed);

/* bf: 4-9 */
draw(vstar[1].p ..(v[4] + v[9]) / 2 .. vstar[5].p, dashed);

/* cd: 2-5 */
draw(vstar[2].p ..(v[2] + v[5]) / 2 .. vstar[3].p, dashed);

/* ce: 3-8 */
draw(vstar[2].p ..(v[3] + v[8]) / 2 .. vstar[4].p, Yellow + 4);
draw(vstar[2].p ..(v[3] + v[8]) / 2 .. vstar[4].p, dashed);

/* cf: 3-7 */
draw(vstar[2].p ..(v[3] + v[7]) / 2 .. ( 3.7, -2.2) .. vstar[5].p, Yellow + 4);
draw(vstar[2].p ..(v[3] + v[7]) / 2 .. ( 3.7, -2.2) .. vstar[5].p, dashed);

/* cf: 5-7 */
draw(vstar[2].p ..(v[5] + v[7]) / 2 .. ( 6.0,  4.5) .. vstar[5].p, dashed);

/* df: 2-6 */
draw(vstar[3].p ..(v[2] + v[6]) / 2 .. vstar[5].p, dashed);

/* df: 5-6 */
draw(vstar[3].p ..(v[5] + v[6]) / 2 .. ( 5.5,  4.0) .. vstar[5].p, Yellow + 4);
draw(vstar[3].p ..(v[5] + v[6]) / 2 .. ( 5.5,  4.0) .. vstar[5].p, dashed);

DrawGraph(vstar, new edge[]);
