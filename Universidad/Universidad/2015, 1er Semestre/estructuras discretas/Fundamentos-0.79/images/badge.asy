/* badge.asy*/

/* Copyright (c) 2010, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import texcolors;

void DrawBadge(int n, pair[] h)
{
  int i;

  for(i = 0; i <= n; ++i) {
    draw((i, 0) -- (i, n), black + 2pt);
    draw((0, i) -- (n, i), black + 2pt);
  }

  for(i = 0; i < h.length; ++i) {
    pair center = (0.5 + h[i].y - 1, n + 0.5 - h[i].x);
    filldraw(circle(center, 0.35),
	     fillpen = Gray * 0.7, drawpen = Black + 0.7);
  }
}
