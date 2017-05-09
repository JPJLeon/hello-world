/* event-tree.asy*/

/* Copyright (c) 2013 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");
defaultpen(fontsize(10));

unitsize(7mm);
real em = 10 * 25.4 / (7 * 72.27);

label("(Inicio)", (0, 0), left);

label("\(\mathrm{H}\)", (3 + em,	 2));
label("\(\mathrm{T}\)", (3 + em, -2));

draw((0, 0) -- (3,  2));
draw((0, 0) -- (3, -2));

label("\(\mathrm{H}\)", (5 + 3 * em,  3));
label("\(\mathrm{T}\)", (5 + 3 * em,  1));

draw((3 + 2 * em, 2) -- (5 + 2 * em, 3));
draw((3 + 2 * em, 2) -- (5 + 2 * em, 1));

label("\(\mathrm{H}\)", (5 + 3 * em,  -1));
label("\(\mathrm{T}\)", (5 + 3 * em,  -3));

draw((3 + 2 * em, -2) -- (5 + 2 * em, -1));
draw((3 + 2 * em, -2) -- (5 + 2 * em, -3));

draw((5 + 4 * em, 3) -- (7 + 4 * em, 3.5));
draw((5 + 4 * em, 3) -- (7 + 4 * em, 2.5));

draw((5 + 4 * em, 1) -- (7 + 4 * em, 1.5));
draw((5 + 4 * em, 1) -- (7 + 4 * em, 0.5));

draw((5 + 4 * em, -1) -- (7 + 4 * em, -0.5));
draw((5 + 4 * em, -1) -- (7 + 4 * em, -1.5));

draw((5 + 4 * em, -3) -- (7 + 4 * em, -2.5));
draw((5 + 4 * em, -3) -- (7 + 4 * em, -3.5));

int i;

for(i = 1; i <= 8; ++i) {
  label(i % 2 == 0 ? "\(\mathrm{T}\)" : "\(\mathrm{H}\)",
	(7 + 5 * em, 4.5 - i));
  label(format("\(\omega_%d\)", i), (8 + 5 * em, 4.5 - i), basealign);
}
