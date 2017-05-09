/* queso-3D.asy*/

/* Copyright (c) 2012-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import three;
import texcolors;

settings.render = 4;

unitsize(1.5cm);
currentprojection = perspective((5, 4, 2) * 2);


real r = 0.16;

void queso(bool bipartite)
{
  int i, j, k;
  surface node = scale(r, r, r) * unitsphere;

  for(i = 0; i < 3; ++i) {
    for(j = 0; j < 3; ++j) {
      draw((i, j, 0) -- (i, j, 2), Black + 1.7);
      draw((i, 0, j) -- (i, 2, j), Black + 1.7);
      draw((0, i, j) -- (2, i, j), Black + 1.7);
    }
  }

  for(i = 0; i < 3; ++i) {
    for(j = 0; j < 3; ++j) {
      for(k = 0; k < 3; ++k) {
	draw(shift(i, j, k) * node,
	     bipartite ?
	       ((i + j + k) % 2 == 0 ? Blue : Red)
	       : YellowOrange);
      }
    }
  }
}

queso(false);

shipout("images/cubo-queso");

erase();

queso(true);

shipout("images/cubo-queso-bipartito");
