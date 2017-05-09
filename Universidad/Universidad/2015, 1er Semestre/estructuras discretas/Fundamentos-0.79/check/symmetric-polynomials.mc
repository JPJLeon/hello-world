/* symmetric-polynomials.mc*/

/* Copyright (c) 2013 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

/*
 * Symmetric polynomials
 *
 * Check identities derived in the chapter on generating functions
 */

/* Elementary polynomials */

e[0](x1, x2, x3, x4) := 1 $
e[1](x1, x2, x3, x4) := x1 + x2 + x3 + x4 $
e[2](x1, x2, x3, x4) := x1 * x2 + x1 * x3 + x1 * x4
			 + x2 * x3 + x2 * x4
			 + x3 * x4 $
e[3](x1, x2, x3, x4) := x1 * x2 * x3 + x1 * x2 * x4 + x1 * x3 * x4
			 + x2 * x3 * x4 $
e[4](x1, x2, x3, x4) := x1 * x2 * x3 * x4 $

/* Complete homogeneous polynomials */

h1[0](x1) := 1 $
h1[1](x1) := x1 $
h1[2](x1) := x1^2 $
h1[3](x1) := x1^3 $
h1[4](x1) := x1^4 $

block([s],
  for i : 0 thru 4 do
	h2[i](x1, x2) := block(s : 0,
			       for j : 0 thru i do
				 s : s + x1^(i - j) * h1[j](x2),
			       s)) $
block([s],
      for i : 0 thru 4 do
	h3[i](x1, x2, x3) := block(s : 0,
				   for j : 0 thru i do
				     s : s + x1^(i - j) * h2[j](x2, x3),
				   s)) $
block([s],
      for i : 0 thru 4 do
	h[i](x1, x2, x3, x4)
	  := block(s : 0,
		   for j : 0 thru i do
		     s : s + x1^(i - j) * h3[j](x2, x3, x4),
		   s)) $

/* Power sums */

block(for k : 0 thru 4 do p[k](x1, x2, x3, x4) := x1^k + x2^k + x3^k + x4^k) $

/* Check identities */

block(print("Check e-h identity"),
  for m : 0 thru 4 do
  block([s : 0],
    for r : 0 thru m do
      s : s + (-1)^(m - r) * e[r](x1, x2, x3, x4)
	   * h[m - r](x1, x2, x3, x4),
    print("m = ", m,
	  ": ", expand(s)))) $

block(print("Check e-p identity"),
  for m : 1 thru 4 do
  block([s : 0],
    for r : 0 thru m - 1 do
      s : s - (-1)^(m - r) * e[r](x1, x2, x3, x4)
	   * p[m - r](x1, x2, x3, x4),
    print("m = ", m,
	  ": ", expand(m * e[m](x1, x2, x3, x4) - s)))) $

block(print("Check h-p identity"),
  for m : 1 thru 4 do
  block([s : 0],
    for r :0 thru m - 1 do
      s : s + h[r](x1, x2, x3, x4) * p[m - r](x1, x2, x3, x4),
    print("m = ", m,
	  ": ", expand(m * h[m](x1, x2, x3, x4) - s)))) $
