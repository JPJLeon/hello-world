/* menages.asy*/

/* Copyright (c) 2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

unitsize(1cm);

int i;
real r = 2,
     l = 2 * sin(pi / 10),
     vertexsize = 0.15;

draw(circle((0, 0), r), black + 1);
for(i = 0; i < 10; ++i)
  filldraw(circle((0, r) * expi(pi * i / 5), vertexsize));

path box = (-4 * vertexsize - l / 2, -2 * vertexsize) --
	   (-4 * vertexsize - l / 2,  2 * vertexsize) --
	   ( 4 * vertexsize + l / 2,  2 * vertexsize) --
	   ( 4 * vertexsize + l / 2, -2 * vertexsize) --
	   cycle;

draw(shift(r * (expi(7 * pi / 10) + expi(5 * pi / 10)) / 2)
       * rotate(18, (0, 0)) * box);
draw(shift(r * (expi(11 * pi / 10) + expi(13 * pi / 10)) / 2)
       * rotate(7 * 18, (0, 0)) * box);
draw(shift(r * (expi(15 * pi / 10) + expi(17 * pi / 10)) / 2)
       * rotate(11 * 18, (0, 0)) * box);
