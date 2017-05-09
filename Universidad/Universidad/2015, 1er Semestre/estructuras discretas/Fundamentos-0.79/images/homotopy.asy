/* homotopy.asy*/

/* Copyright (c) 2013 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

arrowhead Head = HookHead(0, 4);

import texcolors;

unitsize(1cm);

draw((0, 2) -- (-2, 2) -- (-2, -2) -- (2, -2) -- (2, 2) -- cycle,
     arrow = Arrow(Head, 5), Black + 0.8);

int i;
for(i = 1; i < 5; ++i) {
  real lr = 2 + (2 * sqrt(2) - 2) * (4 - i) / 8;

  draw(scale(1 - 2 * i / 13, 1 - 3 * i / 13)
       * ((0, 2) .. lr * unit((-1, 1))
	  .. (-2,   0) .. lr * unit((-1, -1))
	  .. ( 0, - 2) .. lr * unit(( 1, -1))
	  .. ( 2,   0) .. lr * unit(( 1,  1))
	  .. cycle), arrow = Arrow(Head, 5), i != 4 ? Red : Black + 0.8);
}

label("\(\gamma_0\)", (2, 2) + 0.33 * ENE);
label("\(\gamma_1\)", (0.2, 0) + 0.37 * S);
