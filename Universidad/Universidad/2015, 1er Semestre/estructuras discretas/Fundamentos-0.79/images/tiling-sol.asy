/* tiling-sol.asy*/

/* Copyright (c) 2011 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import texcolors;

unitsize(5mm);

filldraw((0, 0) -- (4, 0) -- (4, 4) -- (0, 4) -- cycle,
	 fillpen = Gray * 0.5, Black + 1.1);
filldraw((1, 1) -- (2, 1) -- (2, 2) -- (1, 2) -- cycle,
	 fillpen = Gray, Black + 1.1);
draw((0, 2) -- (1, 2), Black + 1.1);
draw((2, 0) -- (2, 1), Black + 1.1);
draw((2, 3) -- (2, 4), Black + 1.1);
draw((3, 2) -- (4, 2), Black + 1.1);
draw((1, 2) -- (1, 3) -- (3, 3) -- (3, 1) -- (2, 1), Black + 1.1);
