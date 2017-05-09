/* function-graph.asy*/

/* Copyright (c) 2013 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

/*
 * Function graph for:
 *   1	2  3  4	 5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21
 *   6 16  7 12	 1  6  1 10 10 18  4 10 12 10 16 18 14 12  1  8 14
 * Cycles are 10 --> 18 --> 12 --> 10 and 6 --> 6
 */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

unitsize(1cm);
defaultpen(fontsize(10));

pair p0	 = (0, -1),
     p1	 = p0 * expi(2 * pi / 3),
     p2	 = p1 * expi(2 * pi / 3),
     p3	 = 2 * p1,
     p4	 = p3 + (0, 1),
     p5	 = p3 + expi(- pi / 6),
     p6	 = p2 + expi( 7 * pi / 12),
     p7	 = p2 + expi(13 * pi / 12),
     p8	 = p6 + expi(2 * pi / 3),
     p9	 = (0, -2),
     p10 = p0 + expi(5 * pi / 4),
     p11 = p0 + expi(7 * pi / 4),
     p12 = (0, -3),
     p13 = p11 + expi(19 * pi / 12),
     p14 = p11 + expi(23 * pi / 12),
     p15 = (4, -0.5),
     p16 = p15 + (0, 1),
     p17 = p15 + (0, -1),
     p18 = p15 + expi(5 * pi / 4),
     p19 = p15 + expi(- pi / 4),
     p20 = p17 + (0, -1);

vertex[] v = {
	      vertex(p0,  "10", ENE),
	      vertex(p1,  "18", NNW),
	      vertex(p2,  "12", NE),
	      vertex(p3,  "16", ENE),
	      vertex(p4,  "15"),
	      vertex(p5,   "2"),
	      vertex(p6,   "4", NE),
	      vertex(p7,  "13", NNW),
	      vertex(p8,  "11"),
	      vertex(p9,   "8", SW),
	      vertex(p10,  "9", NW),
	      vertex(p11, "14", NE),
	      vertex(p12, "20", S),
	      vertex(p13, "21", S),
	      vertex(p14, "17", NNE),
	      vertex(p15,  "1", NW),
	      vertex(p16,  "6", SE),
	      vertex(p17,  "7", E),
	      vertex(p18, "19", NW),
	      vertex(p19,  "5", NE),
	      vertex(p20,  "3", S),
	     };

edge[] e = {
	    edge( 0,  1, dashed),
	    edge( 1,  2, dashed),
	    edge( 2,  0, dashed),
	    edge( 3,  1),
	    edge( 4,  3),
	    edge( 5,  3),
	    edge( 6,  2),
	    edge( 7,  2),
	    edge( 8,  6),
	    edge( 9,  0),
	    edge(10,  0),
	    edge(11,  0),
	    edge(12,  9),
	    edge(13, 11),
	    edge(14, 11),
	    edge(15, 16),
	    edge(16, 16, dashed),
	    edge(17, 15),
	    edge(18, 15),
	    edge(19, 15),
	    edge(20, 17)
	   };

DrawGraph(v, e, digraph = true);
