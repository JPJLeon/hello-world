/* badges.mc*/

/* Copyright (c) 2010-2011 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

/* 3x3 badge example */

ztt(x1, x2, x3, x4, x5, x6, x7, x8, x9) :=
   (x1^9 + 2 * x1 * x4^2 + x1 * x2^4 + 4 * x1^3 * x2^3) / 8;

ztt(2, 2, 2, 2, 2, 2, 2, 2, 2);

ratsimp(ztt(1 + z, 1 + z^2, 1 + z^3, 1 + z^4, 1 + z^5, 1 + z^6,
	   1 + z^7, 1 + z^8, 1 + z^9));

coeff(expand(ztt(1 + z, 1 + z^2, 1 + z^3, 1 + z^4, 1 + z^5, 1 + z^6,
	   1 + z^7, 1 + z^8, 1 + z^9)), z^2);
