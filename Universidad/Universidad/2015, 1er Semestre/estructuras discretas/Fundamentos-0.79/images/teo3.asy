/* teo3.asy*/

/* Copyright (c) 2009-2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import graph;

unitsize(1cm);
defaultpen(fontsize(10));

real l = 0.8;

pair cp = (0, 0);
pair d	= (l, 0);

int i;

void LineDashLine(pair s, pair e)
{
  pair d = e - s;
  real f = 0.22;

  draw(s -- s + f * d);
  draw(s + f * d -- s + (1 - f) * d, linetype(new real[]{1.5, 5}));
  draw(s + (1 - f) * d -- e);
}

pair[] v = {(0, 0),
	     3 * d,
	     4 * d + (0, 1)* d,
	     7 * d + (0, 1)* d,
	     8 * d,
	    11 * d,
	     4 * d - (0, 1)* d,
	     7 * d - (0, 1)* d};

LineDashLine(v[0], v[1]);
draw(v[1] -- v[2]);
draw(v[1] -- v[6]);
LineDashLine(v[2], v[3]);
LineDashLine(v[6], v[7]);
draw(v[3] -- v[4]);
draw(v[7] -- v[4]);
LineDashLine(v[4], v[5]);

for(i = 0; i < 8; ++i)
  fill(circle(v[i], 0.15), Black);

label("\(x\)",	 v[0] + 0.4 * W);
label("\(u_1\)", v[0] + 0.4 * N);
label("\(v_1\)", v[0] + 0.4 * S);

label("\(u_i\)", v[1] + 0.4 * NW);
label("\(v_i\)", v[1] + 0.4 * SW);

label("\(u_{i + 1}\)", v[2] + 0.4 * N);
label("\(v_{i + 1}\)", v[6] + 0.4 * S);

label("\(u_{j - 1}\)", v[3] + 0.4 * N);
label("\(v_{k - 1}\)", v[7] + 0.4 * S);

label("\(u_j\)", v[4] + 0.4 * NE);
label("\(v_k\)", v[4] + 0.4 * SE);

label("\(y\)",	 v[5] + 0.4 * E);
label("\(u_r\)", v[5] + 0.4 * N);
label("\(v_s\)", v[5] + 0.4 * S);
