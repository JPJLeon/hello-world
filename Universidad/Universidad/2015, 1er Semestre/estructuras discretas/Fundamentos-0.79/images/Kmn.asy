/* Kmn.asy*/

/* Copyright (c) 2009, 2011, 2013-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graph;

unitsize(1cm);

void DrawK1n(int n)
{
  int i;
  real scale = 1.5;
  pair c, a = expi(2 * pi / n);

  fill(Circle((0, 0), 0.15), Black);

  if((n > 1) && (n % 2 == 1))
    c = (0, 1) * scale;
  else
    c = (1, 0) * scale;

  for(i = 0; i < n; ++i) {
    c *= a;
    fill(Circle(c, 0.15), Black);
    draw((0, 0) -- c, Black);
  }
}

void DrawKmn(int m, int n)
{
  int i, j;
  real scale = 1.5;
  real start = (n - m) / 2;

  for(i = 0; i < m; ++i)
    for(j = 0; j < n; ++j)
      draw((0, i) * scale -- (1.2, j - start) * scale);

  for(i = 0; i < m; ++i)
    fill(Circle((0, i) * scale, 0.15), Black);
  for(i = 0; i < n; ++i)
    fill(Circle((1.2, i - start) * scale, 0.15), Black);
}

erase();

DrawK1n(1);
shipout("images/K11");

erase();

DrawK1n(2);
shipout("images/K12");

erase();

DrawK1n(3);
shipout("images/K13");

erase();

DrawK1n(7);
shipout("images/K17");

erase();

DrawKmn(2, 2);
shipout("images/K22");

erase();

DrawKmn(2, 3);
shipout("images/K23");

erase();

DrawKmn(3, 3);
shipout("images/K33");

erase();

DrawKmn(3, 4);
shipout("images/K34");

erase();

DrawKmn(3, 5);
shipout("images/K35");
