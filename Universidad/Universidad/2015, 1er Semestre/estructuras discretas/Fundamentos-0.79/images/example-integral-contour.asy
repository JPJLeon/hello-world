/* example-integral-contour.asy*/

/* Copyright (c) 2013 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

arrowhead Head = HookHead(0, 4);

import texcolors;

unitsize(1cm);
defaultpen(fontsize(10));

real R = 2.5, r = 0.75;

draw((-2.7, 0) -- (3.3, 0), Arrow(Head));
label("\(\Re\)", (3.15, 0) + 0.3 * S);
draw((0, -0.3) -- (0, 3.3), Arrow(Head));
label("\(\Im\)", (0, 3.15) + 0.3 * W);

draw(circle((0, 1), 0.015), Black + 1.3);
label("\(\mathrm{i}\)", (0, 1) + 0.25 * E);

draw(arc((0, 0), R,  0,	 90), Black + 1.1, MidArrow(Head, 4));
draw(arc((0, 0), R, 90, 180), Black + 1.1);
draw((-R, 0) -- (R, 0), Black + 1.1);
label("\(\gamma\)", R * expi(3 * pi / 7) + 0.3 * NE);
label("\(-R\)", (-R, 0) + 0.3 * S);
label("\(R\)",	( R, 0) + 0.3 * S);
