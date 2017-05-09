/* fz.asy*/

/* Copyright (c) 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");
locale("es_CL");
usepackage("icomma");

import graph;
import texcolors;

defaultpen(fontsize(10));

size(12cm, 7cm, IgnoreAspect);

real f(real z) {return z^(-0.8);}

draw(graph(f, 1, 12), Green + 1.1);

real x;
for(x = 1; x < 12; ++x) {
  draw((x, f(x)) -- (x + 1, f(x)) -- (x + 1, 0), Red);
}

xaxis(xmin = 1.0, xmax = 12.1, RightTicks(n = 1));
yaxis(Left, ymin = 0.0, ymax = 1.05,
      LeftTicks(trailingzero, Step = 0.1, step = 0.1));
