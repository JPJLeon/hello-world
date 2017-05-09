/* zigzag.asy*/

/* Copyright (c) 2009-2010, 2012-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

include graphs;

unitsize(1cm);
defaultpen(fontsize(10));

vertex[] v = {(0.0, 0.0),
	      (0.0, 1.0),
	      (0.0, 3.5),

	      (3.0, 0.5),
	      (3.0, 3.0),
	      (3.0, 4.0)};

edge[] e = {edge(0, 3, Red + 1),
	    edge(1, 3, Blue + 1),
	    edge(2, 4, Blue + 1),
	    edge(2, 5, dashed + Gray + 1)};

draw(v[1].p .. v[1].p + 0.4 * (3, 1), Red + 1);
draw(v[4].p .. v[4].p - 0.4 * (3, 1), Red + 1);
draw(v[5].p .. v[5].p + 0.4 * (-3, 1), Red + 1);

fill(Circle((1.5, 1.75), 0.03));
fill(Circle((1.5, 1.95), 0.03));
fill(Circle((1.5, 2.15), 0.03));

label("\(x_n\)",       v[0].p + 0.4 * W);
label("\(x\)",	       v[2].p + 0.4 * W);

label("\(y_n\)",       v[3].p + 0.4 * E);
label("\(y_1\)",       v[4].p + 0.4 * E);
label("\(y\)",	       v[5].p + 0.4 * E);

DrawGraph(v, e);

shipout("images/zigzag-1");

erase();
unitsize(1cm);

edge[] e = {edge(0, 3, Blue + 1),
	    edge(1, 3, Red + 1),
	    edge(2, 4, Red + 1),
	    edge(2, 5, dashed + Gray + 1)};

draw(v[1].p .. v[1].p + 0.4 * (3, 1), Blue + 1);
draw(v[4].p .. v[4].p - 0.4 * (3, 1), Blue + 1);
draw(v[5].p .. v[5].p + 0.4 * (-3, 1), Red + 1);

fill(Circle((1.5, 1.75), 0.03));
fill(Circle((1.5, 1.95), 0.03));
fill(Circle((1.5, 2.15), 0.03));

label("\(x_n\)",       v[0].p + 0.4 * W);
label("\(x\)",	       v[2].p + 0.4 * W);

label("\(y_n\)",       v[3].p + 0.4 * E);
label("\(y_1\)",       v[4].p + 0.4 * E);
label("\(y\)",	       v[5].p + 0.4 * E);

DrawGraph(v, e);

shipout("images/zigzag-2");
