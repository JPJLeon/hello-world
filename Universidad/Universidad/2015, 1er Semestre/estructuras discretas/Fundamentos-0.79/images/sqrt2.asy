/* sqrt2.asy*/

/* Copyright (c) 2010, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graph;
unitsize(1cm);
defaultpen(fontsize(10));

pair pA = (0, 4),
     pB = (0, 0),
     pC = (4, 0),
     pD = pA + expi(-pi / 4) * length(pB - pA),
     pE = pA - (0, 1) * length(pC - pA),
     pF = intersectionpoint(pB -- pC, pD -- pE);

draw(pA -- pB -- pC -- cycle);
draw(pB -- pE);
draw(pD -- pE);
draw(arc(pA, pE, pC));
draw(arc(pA, pB, pD));

label("\(A\)", pA + 0.25 * N);
label("\(B\)", pB + 0.25 * W);
label("\(C\)", pC + 0.25 * E);
label("\(D\)", pD + 0.25 * NE);
label("\(E\)", pE + 0.25 * SW);
label("\(F\)", pF + 0.25 * SSE);
