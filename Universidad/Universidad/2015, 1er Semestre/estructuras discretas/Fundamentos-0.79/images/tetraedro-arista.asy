/* tetraedro-arista.asy*/

/* Copyright (c) 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import three;
import texcolors;

settings.render = 4;

unitsize(2.5cm);
defaultpen(fontsize(10));

int i;

triple vertex[] = {( 1,	 0, -1 / sqrt(2)),
		     (-1,  0, -1 / sqrt(2)),
		     ( 0,  1,  1 / sqrt(2)),
		     ( 0, -1,  1 / sqrt(2))};

for(i = 1; i < 4; ++i)
  draw(vertex[0] -- vertex[i], Black + 1.5);

draw(vertex[1] -- vertex[2] -- vertex[3] -- cycle);

draw(1.35 * (vertex[0] + vertex[3]) / 2 -- 1.35 * (vertex[1] + vertex[2]) / 2,
     Black * 1.2 + dashed);
draw(circle((vertex[0] + vertex[3]) / 2, 0.02));
draw(circle((vertex[1] + vertex[2]) / 2, 0.02));

for(i = 0; i < 4; ++i)
  label(format("%d", i + 1), vertex[i] * 1.1);
