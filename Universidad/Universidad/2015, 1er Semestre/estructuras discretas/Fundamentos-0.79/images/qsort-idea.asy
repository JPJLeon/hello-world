/* qsort-idea.asy*/

/* Copyright (c) 2010-2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");
defaultpen(fontsize(10));

draw((	0, 0) -- (195, 0) -- (195, 20) -- (0, 20) -- cycle);
draw((120, 0) -- (120, 20));
draw((135, 0) -- (135, 20));

label("\(\rule[-3pt]{0pt}{8pt}p\)", ((120 + 135) / 2, 7.5));
label("\(\rule[-4pt]{0pt}{8pt}\le p\)", ((0 + 120) / 2, 7.5));
label("\(\rule[-4pt]{0pt}{8pt}\ge p\)", ((135 + 195) / 2, 7.5));
