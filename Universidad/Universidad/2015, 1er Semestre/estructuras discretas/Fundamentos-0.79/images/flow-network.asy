/* flow-network.asy*/

/* Copyright (c) 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;
unitsize(1cm);
defaultpen(fontsize(10));

vertex v[] = {
  vertex((0.0, 0.0), "\(s\)", W),
  vertex((3.0, 2.5), "\(a\)", N),
  vertex((3.0, 0.0), "\(b\)", N),
  vertex((3.0,-2.5), "\(c\)", S),
  vertex((6.0, 0.0), "\(d\)", NNE),
  vertex((9.0, 0.0), "\(t\)", E)
};

edge e[] = {
  edge(0, 1, "5"),
  edge(0, 2, "4"),
  edge(0, 3, "3"),
  edge(1, 4, "7"),
  edge(1, 5, "3"),
  edge(2, 4, "2"),
  edge(3, 4, "7"),
  edge(3, 5, "5"),
  edge(4, 5, "4")
	   };

DrawGraph(v, e, true);
