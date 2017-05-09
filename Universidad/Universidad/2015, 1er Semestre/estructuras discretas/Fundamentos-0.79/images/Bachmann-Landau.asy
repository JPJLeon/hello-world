/* Bachmann-Landau.asy*/

/* Copyright (c) 2013 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

/*
 * Based on an illustration in
 * David A. Santos, "More Discrete Mathematics" (2007)
 * http://www.opensourcemath.org/books/santos/discrete_math_lecture_notes2.pdf
 */

texpreamble("\usepackage{lmodern, fourier, amssymb}");

unitsize(1mm);
defaultpen(fontsize(10) + linewidth(1));

draw(circle((35, 0), 35));
draw(circle((75, 0), 35));

draw(circle((55, 0), 9.5));

draw(circle((21, -11), 13));
draw(circle((89, -11), 13));

label("\(f(n) \sim g(n)\)", (55, 0));
label("\(f(n) = O(g(n))\)", (28, 25));
label("\(g(n) = \Omega(f(n))\)", (23, 17));
label("\(f(n) = o(g(n))\)", (21, -9));
label("\(g(n) = \omega(f(n))\)", (21, -13.2));
label("\(f(n) = \Theta(g(n))\)", (55, -13.5));
label("\(g(n) = \Theta(f(n))\)", (55,  13.5));
label("\(g(n) = O(f(n))\)", (82, 25));
label("\(f(n) = \Omega(g(n))\)", (87, 17));
label("\(g(n) = o(f(n))\)", (89, -9));
label("\(f(n) = \omega(g(n))\)", (89, -13.2));
