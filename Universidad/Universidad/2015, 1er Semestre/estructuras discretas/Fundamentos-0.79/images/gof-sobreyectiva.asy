/* gof-sobreyectiva.asy*/

/* Copyright (c) 2012, 2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");
defaultpen(fontsize(10));

import graphs;

unitsize(1cm);

vertex[] v;

int i;
for(i = 0; i < 7; ++i)
    v.push((0.0, i));
for(i = 0; i < 6; ++i)
    v.push((2.2, 0.5 + i));
for(i = 0; i < 5; ++i)
    v.push((4.4, 1.0 + i));

edge[] e = {edge( 0,  8),
	    edge( 1,  7),
	    edge( 2,  8),
	    edge( 3,  9),
	    edge( 4, 11),
	    edge( 5, 10),
	    edge( 6,  8),
	    edge( 7, 14),
	    edge( 8, 13),
	    edge( 9, 16),
	    edge(10, 15),
	    edge(11, 17),
	    edge(12, 17)
	   };

DrawGraph(v, e, true);

label("\(\mathcal{A}\)", (0,   0), 4 * S);
label("\(f\)",		 (1.1, 0), 2 * S);
label("\(\mathcal{B}\)", (2.2, 0), 4 * S);
label("\(g\)",		 (3.3, 0), 2 * S);
label("\(\mathcal{C}\)", (4.4, 0), 4 * S);
