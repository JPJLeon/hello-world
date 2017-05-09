/* Fibonacci-search-final.asy*/

/* Copyright (c) 2012, 2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graph;
unitsize(0.8cm);

defaultpen(fontsize(10));
currentpen = basealign(1);

real x[] = {0, 5, 10};

draw(( 0, 0) -- (10, 0));
draw(( 0, 0) -- ( 0, 7));
draw((10, 0) -- (10, 7));

real f(real x)
{
  return -(16248 * x^3 - 334216 * x^2 + 1742398 * x - 3038490) / 506415;
}

path p = graph(f, 0, 10, n = 100, Spline);

real xi = 7 / 2;

draw(p);

draw((x[1], 0) -- (5, f(x[1])));

draw((xi, 0) -- (xi, f(xi)));

label("\(\xi\)",   (xi, 0)   + 0.35 * S);

label("\(a\)",	   (x[0], 0) + 0.35 * S);
label("\(b\)",	   (x[2], 0) + 0.35 * S);
label("\(c = d\)", (x[1], 0) + 0.35 * S);
