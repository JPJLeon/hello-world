/* cuadrado.asy*/

/* Copyright (c) 2010, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

unitsize(1cm);
defaultpen(fontsize(10));

draw((0, 0) -- (0, 2) -- (2, 2) -- (2, 0) -- cycle);

label("1", (2, 0), SE);
label("2", (2, 2), NE);
label("3", (0, 2), NW);
label("4", (0, 0), SW);
