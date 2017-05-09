# curva-eliptica-2.gp
#
# Copyright (c) 2012 Horst H. von Brand
# Bajo licencia MIT. Vea LICENSE-MIT para detalles

set terminal pdfcairo color size 5.5cm, 5.5cm;
set view 0, 0;
set isosample 200, 200;
set contour base;
set cntrparam levels discrete 0.0;
unset surface;

unset clabel;
unset tics;
set nokey;
set border 0;
set lmargin at screen 0;
set rmargin at screen 1;
set bmargin at screen 0;
set tmargin at screen 1;

set arrow from screen 0, 0.5 to screen 1, 0.5 head;
set arrow from screen 0.375, 0 to screen 0.3755, 1 head;

splot [-1.5:2.5][-2:2] y ** 2 - x ** 3 + x - 1 notitle;
