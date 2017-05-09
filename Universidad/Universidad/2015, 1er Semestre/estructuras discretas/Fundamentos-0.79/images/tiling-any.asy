/* tiling-any.asy*/

/* Copyright (c) 2011-2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import texcolors;

unitsize(2mm);

draw(( 0,  4) -- (16,  4), Gray * 0.3);
draw(( 0,  8) -- (16,  8), Gray * 0.3);
draw(( 0, 12) -- (16, 12), Gray * 0.3);
draw(( 4,  0) -- ( 4, 16), Gray * 0.3);
draw(( 8,  0) -- ( 8, 16), Gray * 0.3);
draw((12,  0) -- (12, 16), Gray * 0.3);

draw(( 0,  0) -- (16,  0) -- (16, 16) -- (0, 16) -- cycle, Black + 1.3pt);

filldraw((7, 8) -- (8, 8) -- (8, 7) -- (9, 7) -- (9, 9) -- (7, 9) -- cycle,
	 fillpen = Gray * 0.4);

draw(( 0,  8) -- (16,  8), Gray);
draw(( 8,  0) -- ( 8, 16), Gray);

draw((7, 8) -- (8, 8) -- (8, 7) -- (9, 7) -- (9, 9) -- (7, 9) -- cycle,
     Black);

filldraw((2, 5) -- (2, 6) -- (3, 6) -- (3, 5) -- cycle,
	 fillpen = Gray * 1.1);
