/* arbol-simetria.asy*/

/* Copyright (c) 2009-2010, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

import binarytree;

binarytree bt = binarytree(1,
			   2,
			   3, nil, nil, 4, nil, nil,
			   5,
			   6, nil, nil, 7, nil, nil);
draw(bt);
