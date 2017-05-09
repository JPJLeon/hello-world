/* PIE.asy*/

/* Copyright (c) 2011-2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import texcolors;

unitsize(1cm);
defaultpen(fontsize(10));

real r = 1.2;
real bm = 0.45;

int i, j;

pair[] z = {(0, -1), (0, -1) * expi(2 * pi / 3), (0, -1) * expi(4 * pi / 3)};
path[] c[] = {circle(z[0], r), circle(z[1], r), circle(z[2], r)};

real byl = z[0].y - r - bm, byh = z[1].y + r + bm,
     bxl = z[2].x - r - 2 * bm, bxh = z[1].x + r + 2 * bm;

path b = (bxl, byl) -- (bxh, byl) -- (bxh, byh) -- (bxl, byh) -- cycle;

fill(b, SkyBlue);
draw(b, Black + 1.1);

for(i = 0; i < 3; ++i) {
  fill(c[i], yellow);
}

picture intersection;

fill(intersection, c[0], Orange);
clip(intersection, c[1]);

add(intersection);

fill(intersection, c[0], Orange);
clip(intersection, c[2]);

add(intersection);

fill(intersection, c[1], Orange);
clip(intersection, c[2]);

add(intersection);

for(i = 0; i < 3; ++i) {
  fill(intersection, c[i], Red);
}

for(i = 0; i < 3; ++i) {
  clip(intersection, c[i]);
}

add(intersection);

for(i = 0; i < 3; ++i) {
  draw(c[i], Black + 0.8);
}


label("\(\mathcal{A}\)", 1.1 * z[2]);
label("\(\mathcal{B}\)", 1.1 * z[1]);
label("\(\mathcal{C}\)", 1.1 * z[0]);

label("\(\Omega\)", (bxh, byh) + 0.6 * SW);
