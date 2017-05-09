/* qsort-particionar.asy*/

/* Copyright (c) 2010-2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

draw((	0, 0) -- (195, 0) -- (195, 20) -- (0, 20) -- cycle);
draw(( 15, 0) -- ( 15, 20));
draw(( 90, 0) -- ( 90, 20));
draw((150, 0) -- (150, 20));

defaultpen(fontsize(10));
currentpen = basealign(1);

label("\(p\)", (7.5, 7.5));
label("\({} \le p\)", ((15 + 90) / 2, 7.5));
label("?", ((90 + 150) / 2, 7.5));
label("\({} \ge p\)", ((150 + 190) / 2, 7.5));

label("\(\rightarrow i\)", (90, -7.5));
label("\(j \leftarrow\)", (150, -7.5));
