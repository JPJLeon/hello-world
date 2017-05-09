# suma-curva-eliptica.gp
#
# Copyright (c) 2012, 2014 Horst H. von Brand
# Bajo licencia MIT. Vea LICENSE-MIT para detalles

set terminal pdfcairo enhanced font "Utopia" color size 5.5cm, 5.5cm;
set view 0, 0;
set isosample 200, 200;
set contour base;
set cntrparam levels discrete 0.0;
unset surface;
unset clabel;
unset tics;
set border 0;

set lmargin at screen 0;
set rmargin at screen 1;
set bmargin at screen 0;
set tmargin at screen 1;

set arrow from screen 0, 0.5 to screen 1, 0.5 head;
set arrow from screen 0.375, 0 to screen 0.375, 1 head;


x1 = -0.95; y1 = - sqrt(x1 ** 3 - x1);
x2 = -0.12;  y2 = sqrt(x2 ** 3 - x2);

s = (y2 - y1) / (x2 - x1);

xR = s ** 2 - x1 - x2;
yR = y1 + s * (xR - x1);

set arrow from x1, y1 to xR, yR nohead;
set arrow from xR, yR to xR, -yR nohead;

set label "P_1" at x1 - 0.2, y1 - 0.09;
set label "P_2" at x2 - 0.11, y2 + 0.22;
set label "P_1 + P_2" at xR + 0.11, -yR -0.05;

splot [-1.5:2.5][-2:2] y ** 2 - x ** 3 + x notitle;
