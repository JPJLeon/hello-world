/* tiling-around.asy*/

/* Copyright (c) 2011-2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import texcolors;

unitsize(2mm);

fill((0,  8) -- (8, 8) -- (8, 0) -- (16, 0) -- (16, 16) -- (0, 16) -- cycle,
     Gray * 0.4);
fill((0, 0) -- (8, 0) -- (8, 8) -- (0, 8) -- cycle, Gray * 0.2);

draw((0, 0) -- (16,  0) -- (16, 16) -- (0, 16) -- cycle, Black + 1.1);
draw((8, 0) -- ( 8, 16), Black + 0.5);
draw((0, 8) -- (16,  8), Black + 0.5);

filldraw((7, 7) -- (7, 8) -- (8, 8) -- (8, 7) -- cycle,
	  Black, fillpen = Gray);
