/* stars-bars.asy*/

/* Copyright (c) 2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

unitsize(1cm);

int i;
real r = 0.075;

draw((0, 0) -- (4, 0), black + 2);
for(i = 0; i <= 4; ++i)
  draw((i, 0) -- (i, 0.5), black + 2);

filldraw(circle((1/3, 1/6), r));
filldraw(circle((2/3, 1/6), r));

filldraw(circle((2 + 1/3, 1/6), r));
filldraw(circle((2 + 2/3, 1/6), r));
filldraw(circle((2 + 1/2, 1/3), r));

filldraw(circle((3 + 1/2, 1/6), r));
