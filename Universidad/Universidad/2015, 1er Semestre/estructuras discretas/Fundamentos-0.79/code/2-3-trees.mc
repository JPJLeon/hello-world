/* 2-3-trees.mc*/

/* Copyright (c) 2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

/* 2-3 trees by leaves */

D0(z) := z;
D1(z) := z + D0(z^2 + z^3);
D2(z) := z + D1(z^2 + z^3);
D3(z) := z + D2(z^2 + z^3);
D4(z) := z + D3(z^2 + z^3);
D5(z) := z + D4(z^2 + z^3);
D6(z) := z + D5(z^2 + z^3);
D7(z) := z + D6(z^2 + z^3);

D(z) := ratsimp(D7(z));

for e:1 thru 14 do print(e, ": ", coeff(D(z), z^e)), done;
