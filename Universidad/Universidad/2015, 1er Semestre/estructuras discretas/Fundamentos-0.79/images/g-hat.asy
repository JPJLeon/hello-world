/* g-hat.asy*/

/* Copyright (c) 2009-2010, 2012-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graphs;

int i, j;
real scale = 1.7, vertexsize = 0.3;

vertex[] v = {(0, 0) * scale,
	      (1, 0) * scale,
	      (1, 1) * scale,
	      (0, 1) * scale};
edge[] e;


for(i = 0; i < 4 - 1; ++i)
  e.push(edge(i, i + 1));
e.push(edge(0, 3));

unitsize(1cm);
defaultpen(fontsize(10));

v[0].color = Red;
v[1].color = Blue;
v[2].color = Yellow;
v[3].color = Blue;

DrawGraph(v, e, vertexsize);

draw(arc((0.5, 0.5) * scale, 0.5, 190, -70),  Arrow(HookHead(0, 2)));
label("\(g\)", (0.5, 0.5) * scale);
label("\(\omega\)", (0.5, 0) * scale + 0.3 * S);
label("\(\widehat{g}(\omega)\)", (0.5, 0) * scale + 0.4 * S, invisible);

shipout("images/g-hat-a");

erase();

v[0].color = Blue;
v[1].color = Yellow;
v[2].color = Blue;
v[3].color = Red;

DrawGraph(v, e, vertexsize);

label("\(\widehat{g}(\omega)\)", (0.5, 0) * scale + 0.4 * S);

shipout("images/g-hat-b");
