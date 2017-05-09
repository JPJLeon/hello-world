/* tile.asy*/

/* Copyright (c) 2010 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import texcolors;

unitsize(1cm);

filldraw((0, 0) -- (2, 0) -- (2, 1) -- (1, 1) -- (1, 2) -- (0, 2) -- cycle,
	 fillpen = Gray, drawpen = Black + 2pt);
