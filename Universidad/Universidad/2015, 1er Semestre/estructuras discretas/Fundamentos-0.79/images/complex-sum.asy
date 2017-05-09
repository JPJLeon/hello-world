/* complex-sum.asy*/

/* Copyright (c) 2013 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

arrowhead Head = HookHead(0, 4);

import texcolors;

unitsize(1cm);
defaultpen(fontsize(10));

draw((-0.2, 0) -- (4, 0), Arrow(Head));
draw((0, -0.2) -- (0, 4), Arrow(Head));
label("\(\Im\)", (0, 3.85) + 0.27 * W);
label("\(\Re\)", (3.85, 0) + 0.27 * S);

pair w = (1, 3), z = (2, 0.5);

draw((0, 0) -- w, Arrow(Head, 4.5));
label("\(w\)", w + 0.27 * NW);

draw((0, 0) -- z, Arrow(Head, 4.5));
label("\(z\)", z + 0.27 * SSE);

draw(w -- w + z, dashed);
draw(z -- w + z, dashed);

draw((0, 0) -- w + z, Arrow(Head, 4.5));
label("\(w + z\)", w + z + 0.27 * N);
