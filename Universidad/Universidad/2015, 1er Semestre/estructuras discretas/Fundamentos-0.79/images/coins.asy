/* coins.asy*/

/* Copyright (c) 2012-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

texpreamble("\usepackage{lmodern, fourier, amsmath, amssymb}");
import texcolors;
import graph;

pair DrawCoins(int[] d, pair c)
{
  int dd[]   = { 1,    5,    10,    25,	  50};
  real sz[] = {19.0, 21.21, 17.91, 24.26, 30.61};
  string l[] ={"1",  "5",   "10",  "25",  "50"};
  int i, j;
  pair cp;

  cp = c;
  for(i = 0; i < d.length; ++i) {
    for(j = 1; j <= d[i]; ++j) {
      cp += (sz[i] / 2, 0);
      draw(circle(cp, sz[i] / 2));
      label(l[i], cp);
      cp += (sz[i] / 2 + 3, 0);
    }
  }
  return cp;
}

DrawCoins(new int[] {2, 3, 1, 1}, (0, 0));

shipout("images/coins-52");

erase();

pair cc = (0, 0);

cc = DrawCoins(new int[] {2}, cc);
  dot(cc + (3, 0)); cc += (10, 0);

draw(cc + (0, -25 / 2) -- cc + (0, 25 / 2) -- cc + (25, 25 / 2)
		  -- cc + (25, - 25 / 2) -- cycle);
cc += 25;
  dot(cc + (6, 0)); cc += (12, 0);

cc = DrawCoins(new int[] {0, 0, 1}, cc);
  dot(cc + (3, 0)); cc += (10, 0);

draw(cc + (0, -25 / 2) -- cc + (0, 25 / 2) -- cc + (25, 25 / 2)
		  -- cc + (25, - 25 / 2) -- cycle);
cc += 25;
  dot(cc + (6, 0)); cc += (12, 0);

cc = DrawCoins(new int[] {0, 0, 0, 0, 1}, cc);

shipout("images/coins-product");

erase();

cc = (0, 0);

draw(cc + (0, -25 / 2) -- cc + (0, 25 / 2) -- cc + (25, 25 / 2)
		  -- cc + (25, - 25 / 2) -- cycle);

cc += (25, 0);

label("\(+\)", cc + (6, 0)); cc += (12, 0);

cc = DrawCoins(new int [] {1}, cc);
  label("\(+\)", cc + (4, 0)); cc += (10, 0);

cc = DrawCoins(new int [] {2}, cc);
  label("\(+\)", cc + (4, 0)); cc += (10, 0);

cc = DrawCoins(new int [] {3}, cc);
  label("\(+\)", cc + (4, 0)); cc += (10, 0);

cc = DrawCoins(new int [] {4}, cc);

label("\(+ \dotsb\)", cc + (10, 0));

cc = (0, -35);

draw(cc + (0, -25 / 2) -- cc + (0, 25 / 2) -- cc + (25, 25 / 2)
		  -- cc + (25, - 25 / 2) -- cycle);

cc += (25, 0);

label("\(+\)", cc + (6, 0)); cc += (12, 0);

cc = DrawCoins(new int [] {0, 1}, cc);
  label("\(+\)", cc + (4, 0)); cc += (10, 0);

cc = DrawCoins(new int [] {0, 2}, cc);
  label("\(+\)", cc + (4, 0)); cc += (10, 0);

cc = DrawCoins(new int [] {0, 3}, cc);
  label("\(+\)", cc + (4, 0)); cc += (10, 0);

cc = DrawCoins(new int [] {0, 4}, cc);

label("\(+ \dotsb\)", cc + (10, 0));

shipout("images/coins-1+5s");

erase();

pair cc = (0, 0);

draw(cc + (0, -25 / 2) -- cc + (0, 25 / 2) -- cc + (25, 25 / 2)
		  -- cc + (25, - 25 / 2) -- cycle);

cc += (25, 0);

label("\(+\)", cc + (6, 0)); cc += (12, 0);

cc = DrawCoins(new int [] {1},	  cc);
  label("\(+\)", cc + (4, 0)); cc += (10, 0);

cc = DrawCoins(new int [] {0, 1}, cc);
  label("\(+\)", cc + (4, 0)); cc += (10, 0);

cc = DrawCoins(new int [] {2}, cc);
  label("\(+\)", cc + (4, 0)); cc += (10, 0);

cc = DrawCoins(new int [] {1, 1}, cc);
  label("\(+\)", cc + (4, 0)); cc += (10, 0);

cc = DrawCoins(new int [] {0, 2}, cc);

label("\(+ \dotsb\)", cc + (10, 0));

shipout("images/coins-1x5s");
