/* complex-product.asy*/

/* Copyright (c) 2013 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

arrowhead Head = HookHead(0, 4);

import texcolors;

unitsize(1cm);
defaultpen(fontsize(10));

draw((-1.5, 0) -- (3, 0), Arrow(Head));
draw((0, -0.2) -- (0, 4), Arrow(Head));
label("\(\Im\)", (0, 3.85) + 0.27 * W);
label("\(\Re\)", (2.85, 0) + 0.27 * S);

pair w = (0.7, 2.2), z = (1.3, 1);

draw((0, 0) -- w, Arrow(Head, 4.5));
label("\(w\)", w + 0.27 * NW);

draw((0, 0) -- z, Arrow(Head, 4.5));
label("\(z\)", z + 0.27 * SSE);

draw((0, 0) -- w * z, Arrow(Head, 4.5));
label("\(w \cdot z\)", w * z + 0.27 * N);

draw(arc((0, 0), 0.5,  0, degrees(z)),	   Red, Arrow(Head, 2.5));
draw(arc((0, 0), 0.85, 0, degrees(w)),	   Red, Arrow(Head, 2.5));
draw(arc((0, 0), 1.15, 0, degrees(w * z)), Red, Arrow(Head, 2.5));
