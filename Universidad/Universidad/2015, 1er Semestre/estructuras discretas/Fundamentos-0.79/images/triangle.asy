/* triangle.asy*/

/* Copyright (c) 2011-2013 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

arrowhead Head = HookHead(0, 4);

unitsize(1cm);
defaultpen(fontsize(10));

pair A = (0, 0), B = (2, 3), C = (4.5, 1.5);

draw((-0.2, 0)	 -- (5, 0), arrow = Arrow(Head, 5),
     L = "\(\Re\)", align = 2.5 * S + 14 * E);

draw((0,   -0.2) -- (0, 3.3), arrow = Arrow(Head, 5),
     L = "\(\Im\)", align = 9 * N + 3 * W);

draw(A -- B, arrow = Arrow(Head, 4), L = "\(a\)", align = NW);
draw(B -- C, arrow = Arrow(Head, 4), L = "\(b\)", align = NE);
draw(A -- C, arrow = Arrow(Head, 4), L = "\(a + b\)", align = SE);
