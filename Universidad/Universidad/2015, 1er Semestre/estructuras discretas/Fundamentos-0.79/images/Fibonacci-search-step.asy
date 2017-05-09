/* Fibonacci-search-step.asy*/

/* Copyright (c) 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graph;
unitsize(0.8cm);

defaultpen(fontsize(10));
currentpen = basealign(1);

int i;
real phi = (sqrt(5) - 1) / 2;

real x[] = {0, 10 * (1 - phi), 10 * phi, 10 * 2 * phi^2, 10};

draw(( 0, 0) -- (10, 0));
draw(( 0, 0) -- ( 0, 7));
draw((10, 0) -- (10, 7));

real f(real x)
{
  return -(64 * x^3 - 1728 * x^2 + 13200 * x - 39700) / 6435;
}

path p = graph(f, 0, 10, n = 100, Spline);

real xi = 11 / 2;

draw(p);

for(i = 1; i < x.length - 1; ++i) {
  draw((x[i], 0) -- (x[i], f(x[i])));
}

draw((xi, 0) -- (xi, f(xi)));

label("\(\xi\)", (xi, 0) + 0.35 * S);

label("\(a\)", (x[0], 0) + 0.35 * S);
label("\(b\)", (x[4], 0) + 0.35 * S);
label("\(c\)", (x[1], 0) + 0.35 * S);
label("\(d\)", (x[2], 0) + 0.35 * S);

label("\(e\)", (x[3], 0) + 0.35 * S);

label("\(a'\)", (x[1], 0) + 0.85 * S);
label("\(c'\)", (x[2], 0) + 0.85 * S);
label("\(d'\)", (x[3], 0) + 0.85 * S);
label("\(b'\)", (x[4], 0) + 0.85 * S);
