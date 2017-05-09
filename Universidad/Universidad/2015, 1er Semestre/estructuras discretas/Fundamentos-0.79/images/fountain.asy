/* fountain.asy*/

/* Copyright (c) 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import texcolors;
import graph;

unitsize(1cm);

real r = 0.3, sep = sqrt(3);

struct row {
  int start, len;

  void operator init(int s, int l) {
    start = s;
    len	  = l;
  };
};

row[] fountain =
  {
    row(0, 15),
    row(2,  9),
    row(2,  5),
    row(0,  2)
  };

void DrawFountain(row[] F)
{
  int i, j;
  int start;

  start = 0;
  for(i = 0; i < F.length; ++i) {
    start += 2 * F[i].start;
    for(j = 0; j < F[i].len; ++j)
      draw(circle((start + i + 2 * j, i * sep) * r, r), Black + 1);
  }
}

DrawFountain(fountain);
