/* cubo-vertice.asy*/

/* Copyright (c) 2010 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

unitsize(2cm);

draw((0, 0) -- expi(	 pi / 6), gray + dashed);
draw((0, 0) -- expi( 3 * pi / 6), black + 2pt);
draw((0, 0) -- expi( 5 * pi / 6), gray + dashed);
draw((0, 0) -- expi( 7 * pi / 6), black + 2pt);
draw((0, 0) -- expi( 9 * pi / 6), gray + dashed);
draw((0, 0) -- expi(11 * pi / 6), black + 2pt);

draw(expi(pi / 6) -- expi(3 * pi / 6) -- expi(5 * pi / 6) -- expi(7 * pi / 6)
      -- expi(9 * pi / 6) -- expi(11 * pi / 6) -- cycle, black + 2pt);
