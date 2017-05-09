# Bernoulli.gp
#
# Copyright (c) 2011, 2014 Horst H. von Brand
# Bajo licencia MIT. Vea LICENSE-MIT para detalles

set terminal pdfcairo color;
set xzeroaxis linewidth 5;
unset tics;
set pointsize 10;

B2(x) = x**2 - x + 1.0 / 6.0;
B3(x) = x**3 - 3.0 * x**2 / 2.0 + x / 2.0;
B4(x) = x**4 - 2.0 * x**3 + x**2 - 1.0 / 30.0;
B5(x) = x**5 - 5.0 * x**4 / 2.0 + 5.0 * x**3 / 3.0 - x / 6.0;
B6(x) = x**6 - 3.0 * x**5 + 5.0 * x**4 / 2.0 - x**2 / 2.0 + 1.0 / 42.0;
B7(x) = x**7 - 7.0 * x**6 / 2.0 + 7.0 * x**5 / 2.0 - 7.0 * x**3 / 6.0 \
	  + x / 6.0;
B8(x) = x**8 - 4.0 * x**7 + 14.0 * x**6 / 3.0 - 7.0 * x**4 / 3.0 \
	 + 2.0 * x**2 / 3.0 - 1.0 / 30.0;
B9(x) = x**9 - 9.0 * x**8 / 2.0 + 6.0 * x**7 - 21.0 * x**5 / 5.0 + 2.0 * x**3 \
	 - 3.0 * x / 10.0;
B10(x) = x**10 - 5.0 * x**9 + 15.0 * x**8 / 2.0 - 7.0 * x**6 + 5.0 * x**4 \
	  - 3.0 * x**2 / 2.0 + 5.0 / 66.0;
B11(x) = x**11 - 11.0 * x**10 / 2.0 + 55.0 * x**9 / 6.0 - 11.0 * x**7 \
	  + 11.0 * x**5 - 11.0 * x**3 / 2.0 + 5.0 * x / 6.0;
B12(x) = x**12 - 6.0 * x**11 + 11.0 * x**10 - 33.0 * x**8 / 2.0 \
	  + 22.0 * x**6 - 33.0 * x**4 / 2.0 + 5 * x**2 - 691.0 / 2730;

B13(x) = x**13 - 13.0 * x**12 / 2.0 + 13.0 * x**11 - 143.0 * x**9 / 6.0 \
	  + 286.0 * x**7 / 7.0 - 429.0 * x**5 / 10.0 + 65.0 * x**3 / 3.0 \
	  - 691.0 * x / 210.0;

# 1/4 is a close enough approximation for the maximum/minimum of the
# odd Bernoulli polynomials

set output "images/B2.pdf";
L = abs(B2(0.0)) * 1.1;
plot [0:1][-L:L] B2(x) title "" linewidth 5;

set output "images/B3.pdf";
L = abs(B3(0.25)) * 1.1;
plot [0:1][-L:L] B3(x) title "" linewidth 5;

set output "images/B4.pdf";
L = abs(B4(0.0)) * 1.1;
plot [0:1][-L:L] B4(x) title "" linewidth 5;

set output "images/B5.pdf";
L = abs(B5(0.25)) * 1.1;
plot [0:1][-L:L] B5(x) title "" linewidth 5;

set output "images/B6.pdf";
L = abs(B6(0.0)) * 1.1;
plot [0:1][-L:L] B6(x) title "" linewidth 5;

set output "images/B7.pdf";
L = abs(B7(0.25)) * 1.1;
plot [0:1][-L:L] B7(x) title "" linewidth 5;

set output "images/B8.pdf";
L = abs(B8(0.0)) * 1.1;
plot [0:1][-L:L] B8(x) title "" linewidth 5;

set output "images/B9.pdf";
L = abs(B9(0.25)) * 1.1;
plot [0:1][-L:L] B9(x) title "" linewidth 5;

set output "images/B10.pdf";
L = abs(B10(0.0)) * 1.1;
plot [0:1][-L:L] B10(x) title "" linewidth 5;

set output "images/B11.pdf";
L = abs(B11(0.25)) * 1.1;
plot [0:1][-L:L] B11(x) title "" linewidth 5;

set output "images/B12.pdf";
L = abs(B12(0.0)) * 1.1;
plot [0:1][-L:L] B12(x) title "" linewidth 5;

set output "images/B13.pdf";
L = abs(B13(0.25)) * 1.1;
plot [0:1][-L:L] B13(x) title "" linewidth 5;
