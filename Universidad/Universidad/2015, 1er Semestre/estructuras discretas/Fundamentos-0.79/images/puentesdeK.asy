/* puentesdeK.asy*/

/* Copyright (c) 2009-2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import trembling;
import graphs;

unitsize(1cm);
defaultpen(fontsize(10));

real scale = 1.4;
int i;

tremble tr = tremble(angle = 3, frequency = 0.15, random = 30, fuzz = 1);

pair[] v = {(0,	  0),
	    (0,	 -1) * scale,
	    (0,	  1) * scale,
	    (1.5, 0) * scale};

draw(tr.deform(v[0]{4 * SW + W} .. {3 * SE + E}v[1]));
draw(tr.deform(v[0]{2 * SE + E} .. {5 * SW + W}v[1]));
draw(tr.deform(v[0]{6 * NW + W} .. {3 * NE + E}v[2]));
draw(tr.deform(v[0]{3 * NE + E} .. {4 * NW + W}v[2]));
draw(tr.deform(v[0]{NE + 9 * E} .. {SE + 8 * E}v[3]));
draw(tr.deform(v[1]{9 * E + NE} .. {6 * NE + E}v[3]));
draw(tr.deform(v[2]{8 * E + SE} .. {7 * SE + E}v[3]));

for(i = 0; i < v.length; ++i)
    fill(Circle(v[i], 0.15), Black);

label("5", v[0] + 0.4 * W);
label("3", v[1] + 0.35 * S);
label("3", v[2] + 0.35 * N);
label("3", v[3] + 0.35 * E);
