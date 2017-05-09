/* vestirse.asy*/

/* Copyright (c) 2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern}");

import graphs;
import unicode;

unitsize(1cm);
defaultpen(fontsize(10));
currentpen = basealign(1);

real h = 2 * 1.2 * 1.5, v = - 2 * 0.3 * 3;

void node(pair p, string lab)
{
  draw(shift(p) * scale(1.2, 0.3) * unitcircle, black + 1);
  label(lab, p);
}

void edge(pair p1, pair p2)
{
    draw(intersectionpoint(p1 -- p2,
			   shift(p1) * scale(1.2, 0.3) * unitcircle)
	 -- intersectionpoint(p1 -- p2,
			      shift(p2) * scale(1.2, 0.3) * unitcircle),
	 Arrow(HookHead(0, 3)));
}


node((0, 0),	       "camisa");
node((h, 0),	       "pantalón");
node((2 * h, 0),       "calcetines");

node((0, v),	       "jersey");
node((h, v),	       "cinturón");
node((2 * h, v),       "zapatos");

node((0.5 * h, 2 * v), "chaqueta");

edge((0, 0), (0, v));
edge((h, 0), (h, v));
edge((2 * h, 0), (2 * h, v));

edge((0, 0), (h, v));
edge((h, 0), (2 * h, v));

edge((0, v), (0.5 * h, 2 * v));
edge((h, v), (0.5 * h, 2 * v));
