/* grafo-mst.asy*/

/* Copyright (c) 2009-2010, 2012-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

vertex[] v = {
	      vertex((0.0, 2.2) / 1.7, "\(v\)", NW),
	      vertex((0.3, 0.0) / 1.7, "\(c\)", SW),
	      vertex((2.1, 0.7) / 1.7, "\(b\)", NE),
	      vertex((4.2, 3.7) / 1.7, "\(a\)", N),
	      vertex((5.1, 0.3) / 1.7, "\(d\)", SE),
	      vertex((6.7, 1.6) / 1.7, "\(e\)", NE)
	     };

edge[] e = {
	    edge(0, 1, "7", S),
	    edge(0, 2, "9"),
	    edge(0, 3, "3"),
	    edge(1, 2, "2"),
	    edge(2, 4, "4"),
	    edge(3, 4, "6", S),
	    edge(3, 5, "8"),
	    edge(4, 5, "1")
	   };

unitsize(1cm);
defaultpen(fontsize(10));

pair c1 = (6.0, -0.9) / 1.7, c2 = (6.3, -0.7) / 1.7;

draw(v[1].p .. c1 .. c2 .. v[5].p, L = "5", N);

DrawGraph(v, e);

shipout("images/grafo-mst");

erase();

draw(v[0].p .. v[3].p, yellow + 4);

draw(v[1].p .. c1 .. c2 .. v[5].p, L = "5", N);

DrawGraph(v, e);

shipout("images/grafo-Prim-1");

erase();

draw(v[0].p .. v[3].p, yellow + 4);
draw(v[3].p .. v[4].p, yellow + 4);

draw(v[1].p .. c1 .. c2 .. v[5].p, L = "5", N);

DrawGraph(v, e);

shipout("images/grafo-Prim-2");

erase();

draw(v[0].p .. v[3].p, yellow + 4);
draw(v[3].p .. v[4].p, yellow + 4);
draw(v[4].p .. v[5].p, yellow + 4);
draw(v[1].p .. c1 .. c2 .. v[5].p, L = "5", N);

DrawGraph(v, e);

shipout("images/grafo-Prim-3");

erase();

draw(v[0].p .. v[3].p, yellow + 4);
draw(v[3].p .. v[4].p, yellow + 4);
draw(v[4].p .. v[5].p, yellow + 4);
draw(v[2].p .. v[4].p, yellow + 4);
draw(v[1].p .. c1 .. c2 .. v[5].p, L = "5", N);

DrawGraph(v, e);

shipout("images/grafo-Prim-4");

erase();

draw(v[0].p .. v[3].p, yellow + 4);
draw(v[3].p .. v[4].p, yellow + 4);
draw(v[4].p .. v[5].p, yellow + 4);
draw(v[2].p .. v[4].p, yellow + 4);
draw(v[1].p .. v[2].p, yellow + 4);

draw(v[1].p .. c1 .. c2 .. v[5].p, L = "5", N);

DrawGraph(v, e);

shipout("images/grafo-Prim-5");

erase();

draw(v[4].p .. v[5].p, yellow + 4);

draw(v[1].p .. c1 .. c2 .. v[5].p, L = "5", N);

DrawGraph(v, e);

shipout("images/grafo-Kruskal-1");

erase();

draw(v[4].p .. v[5].p, yellow + 4);
draw(v[1].p .. v[2].p, yellow + 4);

draw(v[1].p .. c1 .. c2 .. v[5].p, L = "5", N);

DrawGraph(v, e);

shipout("images/grafo-Kruskal-2");

erase();

draw(v[4].p .. v[5].p, yellow + 4);
draw(v[1].p .. v[2].p, yellow + 4);
draw(v[0].p .. v[3].p, yellow + 4);

draw(v[1].p .. c1 .. c2 .. v[5].p, L = "5", N);

DrawGraph(v, e);

shipout("images/grafo-Kruskal-3");

erase();

draw(v[4].p .. v[5].p, yellow + 4);
draw(v[1].p .. v[2].p, yellow + 4);
draw(v[0].p .. v[3].p, yellow + 4);
draw(v[2].p .. v[4].p, yellow + 4);

draw(v[1].p .. c1 .. c2 .. v[5].p, L = "5", N);

DrawGraph(v, e);

shipout("images/grafo-Kruskal-4");

erase();

draw(v[4].p .. v[5].p, yellow + 4);
draw(v[1].p .. v[2].p, yellow + 4);
draw(v[0].p .. v[3].p, yellow + 4);
draw(v[2].p .. v[4].p, yellow + 4);
draw(v[3].p .. v[4].p, yellow + 4);

draw(v[1].p .. c1 .. c2 .. v[5].p, L = "5", N);

DrawGraph(v, e);

shipout("images/grafo-Kruskal-5");
