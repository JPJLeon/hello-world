/* Venn.asy*/

/* Copyright (c) 2009, 2011-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import texcolors;

arrowhead Head = HookHead(0, 4);

pair z0 = (0,  0);
pair z1 = (-1, 0) * 1.3 / 1.5;
pair z2 = (1,  0) * 1.3 / 1.5;

real r = 1.3;

path c1 = circle(z1, r);
path c2 = circle(z2, r);

unitsize(1cm);
defaultpen(fontsize(10));

erase();

fill(c1, SkyBlue);
clip(c2);

draw(c1, Black + 0.8);
draw(c2, Black + 0.8);

label("\(\mathcal{A}\)", z1 * 1.15);
label("\(\mathcal{B}\)", z2 * 1.15);

pair z = (0.3, 1.8) * 1.2 / 1.5;
real m = 3;
margin BigMargin = Margin(0, m * dot(unit(z1 - z), unit(z0 - z)));
label("\(\mathcal{A} \cap \mathcal{B}\)", z + 0.22 * N);
draw(z -- z0, Arrow(Head, 5), BigMargin);
shipout("images/interseccion");

erase();

fill(c1, SkyBlue);
fill(c2, SkyBlue);
draw(c1, Black + 0.8);
draw(c2, Black + 0.8);

pair z = (0, 1.8) * 1.3 / 1.5;

label("\(\mathcal{A}\)", z1 * 1.15);
label("\(\mathcal{B}\)", z2 * 1.15);
label("\(\mathcal{A} \cup \mathcal{B}\)", z);
shipout("images/union");

erase();

picture intersection;

fill(intersection, c1, White);
clip(intersection, c2);

fill(c1, SkyBlue);
add(intersection);

draw(c1, Black + 0.8);
draw(c2, Black + 0.8);

label("\(\mathcal{A}\)", z1 * 1.15);
label("\(\mathcal{B}\)", z2 * 1.15);

pair z = (-1.3, 1.8) * 1.3 / 1.5;
real m = 3;
margin BigMargin = Margin(0, m * dot(unit(z1 - z), unit(z0 - z)));
label("\(\mathcal{A} \smallsetminus \mathcal{B}\)", z + 0.22 * N);
draw(z -- (-1.1, 0.35), Arrow(Head, 5), BigMargin);
shipout("images/diferencia");

erase();

fill(c1, SkyBlue);
fill(c2, SkyBlue);
add(intersection);

draw(c1, Black + 0.8);
draw(c2, Black + 0.8 );

label("\(\mathcal{A}\)", z1 * 1.15);
label("\(\mathcal{B}\)", z2 * 1.15);

pair z = (0, 1.8) * 1.3 / 1.5;
real m = 3;
margin BigMargin = Margin(0, m * dot(unit(z1 - z), unit(z0 - z)));
label("\(\mathcal{A} \vartriangle \mathcal{B}\)", z + 0.22 * N);
draw((z + (-0.1, -0.1)) -- (z1 * 1.35 + (0, 0.3)), Arrow(Head, 5), BigMargin);
draw((z + (0.1,	 -0.1)) -- (z2 * 1.35 + (0, 0.3)), Arrow(Head, 5), BigMargin);
shipout("images/diferencia-simetrica");

erase();

path c = circle(z0, r);
path b = (-3, -2) -- (-3, 2) -- (3, 2) -- (3, -2) -- cycle;

fill(b, SkyBlue);
fill(c, White);

draw(b, Black + 1.1);
draw(c, Black + 0.8);

label("\(\mathcal{A}\)", (0,0));
label("\(\mathcal{U}\)", (2.6, 1.6));

label("\(\overline{\mathcal{A}}\)", (-2.2, 2.3) + 0.2 * (N + 0.5 * NW));
draw((-2.2, 2.3) -- (z0 + 1.6 * (-3.3, 1.7)) / 2.6, Arrow(Head, 5));
shipout("images/complemento");
