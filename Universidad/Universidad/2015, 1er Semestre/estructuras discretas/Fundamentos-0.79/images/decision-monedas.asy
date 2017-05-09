/* decision-monedas.asy*/

/* Copyright (c) 2009-2010, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

unitsize(1cm);
defaultpen(fontsize(10));

label("\rule[-0.5ex]{0pt}{2.0ex}\(a : b\)", (0, 0));
draw(L = "\({} < {}\)", align = NW,   0.2 * (-2, -1.5) .. (-2, -1.5));
draw(L = "\({} = {}\)", align = W/10, 0.2 * ( 0, -1.5) .. ( 0, -1.5));
draw(L = "\({} > {}\)", align = NE,   0.2 * ( 2, -1.5) .. ( 2, -1.5));
