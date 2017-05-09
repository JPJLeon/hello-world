/* sequence-continuous-limit-discontinuous.asy*/

/* Copyright (c) 2013 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

arrowhead Head = HookHead(0, 4);

import texcolors;

unitsize(2cm);
defaultpen(fontsize(10));

draw((-2, 0) --	  (2, 0),   Arrow(Head));
draw((0, -0.2) -- (0, 1.3), Arrow(Head));
label("\(f(x)\)", (0,	 1.15) + 0.24 * W);
label("\(x\)",	  (1.85, 0)    + 0.17 * S);

int i;
string l;
for(i = 1; i < 5; ++i) {
  draw((- 1.7 / i, 0) -- (0, 1) -- (1.7 / i, 0), Red);
  label(format("%d", i),
	(1.5 * i * (- 1.7 / i, 0) + (0, 1)) / (1.5 * i + 1));
}
