/* ricatti.mc -- check derivations for Ricatti recurrences */

/* Copyright (c) 2013 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

R(w) := (a * w + b) / (c * w + d);

Ri(n) := block(wi:w, for k:1 thru n do wi : R(wi), wi);

e : (a - d + sqrt((a - d)^2 + 4 * b * c)) / (2 * b);

x(w) := 1 / (1 + e * w);

w(x) := rhs(solve(x(s) = x, s)[1]);

Rx(x) := rhs(solve(w(x2) = R(w(x)), x2)[1]);




