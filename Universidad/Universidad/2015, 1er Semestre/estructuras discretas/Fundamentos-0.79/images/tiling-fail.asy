/* tiling-fail.asy*/

/* Copyright (c) 2011-2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import texcolors;

unitsize(2mm);

draw(( 0,  4) -- (16,  4), Gray * 0.3);
draw(( 0,  8) -- (16,  8), Gray * 0.7);
draw(( 0, 12) -- (16, 12), Gray * 0.3);
draw(( 4,  0) -- ( 4, 16), Gray * 0.3);
draw(( 8,  0) -- ( 8, 16), Gray * 0.7);
draw((12,  0) -- (12, 16), Gray * 0.3);

draw(( 0,  0) -- (16,  0) -- (16, 16) -- (0, 16) -- cycle, Black + 2pt);

filldraw((3, 4) -- (4, 4) -- (4, 5) -- (3, 5) -- cycle,
	 fillpen = Gray * 0.4);

filldraw((12, 3) -- (13, 3) -- (13, 4) -- (12, 4) -- cycle,
	 fillpen = Gray * 0.4);

filldraw((4, 12) -- (5, 12) -- (5, 13) -- (4, 13) -- cycle,
	 fillpen = Gray * 0.4);

filldraw((12, 11) -- (13, 11) -- (13, 12) -- (12, 12) -- cycle,
	 fillpen = Gray * 0.4);
