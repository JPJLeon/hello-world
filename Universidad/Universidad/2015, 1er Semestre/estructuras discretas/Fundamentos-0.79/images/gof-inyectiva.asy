/* gof-inyectiva.asy*/

/* Copyright (c) 2012, 2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");
defaultpen(fontsize(10));

import graphs;

unitsize(1cm);

vertex[] v;

int i;

for(i = 0; i < 5; ++i)
    v.push((0.0, 1.0 + i));
for(i = 0; i < 6; ++i)
    v.push((2.2, 0.5 + i));
for(i = 0; i < 7; ++i)
    v.push((4.4, i));

edge[] e = {edge( 0,  5),
	    edge( 1,  6),
	    edge( 2,  7),
	    edge( 3,  9),
	    edge( 4,  8),
	    edge( 5, 13),
	    edge( 6, 12),
	    edge( 7, 15),
	    edge( 8, 14),
	    edge( 9, 16),
	    edge(10, 16)
	   };

DrawGraph(v, e, true);

label("\(\mathcal{A}\)", (0,   0), 4 * S);
label("\(f\)",		 (1.1, 0), 2 * S);
label("\(\mathcal{B}\)", (2.2, 0), 4 * S);
label("\(g\)",		 (3.3, 0), 2 * S);
label("\(\mathcal{C}\)", (4.4, 0), 4 * S);
