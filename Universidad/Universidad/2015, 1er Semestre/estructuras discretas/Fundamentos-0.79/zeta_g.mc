/* zeta_g.mc*/

/* Copyright (c) 2008, 2011 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

zeta6(x1, x2, x3, x4, x5, x6)
   := 1/12 * (x1^6 + 3 * x1^2 * x2^2 + 4 * x2^3 + 2 * x3^2 + 2 * x6);

expand(zeta6(u + v + w,
	     u^2 + v^2 + w^2,
	     u^3 + v^3 + w^3,
	     u^4 + v^4 + w^4,
	     u^5 + v^5 + w^5,
	     u^6 + v^6 + w^6));

zetat(x1, x2, x3, x4)
   := 1/12 * (x1^4 + 8 * x1 * x3 + 3 * x2^2);

expand(zetat(u + v + w,
	     u^2 + v^2 + w^2,
	     u^3 + v^3 + w^3,
	     u^4 + v^4 + w^4));

zetat(2, 2, 2, 2);

zetat(4, 4, 4, 4);
