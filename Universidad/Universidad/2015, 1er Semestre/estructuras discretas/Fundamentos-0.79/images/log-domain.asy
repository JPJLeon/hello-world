/* log-domain.asy*/

/* Copyright (c) 2013 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

arrowhead Head = HookHead(0, 4);

import texcolors;

unitsize(0.5cm);
defaultpen(fontsize(10));

path db = (0, -1) .. (1, 0) .. (0.3, 2.5) .. (1, 3.5) .. (4, 0) .. (0, -4)
  .. (-4, 0) .. (-1, 3.5) .. (-0.3, 2.5) .. cycle;

filldraw(rotate(-45, (0, 0)) * db, fillpen = 0.2 * Gray);

draw((0, -4.6) -- (0, 5.4), Arrow(Head, 5));
label("\(\Im\)", (0, 5.2) + 0.43 * W);
draw((-4.6, 0) -- (5.4, 0), Arrow(Head, 5));
label("\(\Re\)", (5.2, 0) + 0.43 * S);

draw((0, 0) -- (4, 4));

label("\(D\)", (-1.7, 2.3));
