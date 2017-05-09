/*
 * Check coefficients on sums of the form ln^r (1 / (1 - z)) / (1 - z)^s
 */

/* Copyright (c) 2015 Horst H. von Brand */
/* Under MIT license. See LICENSE-MIT for details */

/* (Generalized) harmonic numbers */

H(e, n) := sum(k^(-e), k, 1, n);


/* Coefficient of z^n in ln(1/(1 - z)) / (1 - z)^k */

cl1(k, n) := binomial(n + k - 1, k - 1) * (H(1, n + k - 1) - H(1, k - 1));

/* Coefficient of z^n in ln^2(1/(1 - z)) */

cl20(n) := 2 * H(1, n - 1) / n;

/* Coefficient of z^n in ln^2(1/(1 - z)) / (1 - z) */

cl21(n) := H(1, n)^2 - H(2, n);

/* Coefficient of z^n in ln^2(1/(1 - z)) / (1 - z)^2 */

cl22(n) := binomial(n + 1, 1)
	     * (H(1, n + 1)^2 - H(2, n + 1) - 2 * H(1, n + 1) + 2);

/* Coefficient of z^n in ln^2(1/(1 - z)) / (1 - z)^3 */

cl23(n) := binomial(n + 2, 2)
	     * (H(1, n + 2)^2 - H(2, n + 2) - 3 * H(1, n + 2) + 7/2);
