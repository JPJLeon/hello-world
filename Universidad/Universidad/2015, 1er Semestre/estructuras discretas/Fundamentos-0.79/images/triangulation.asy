/* triangulation.asy*/

/* Copyright (c) 2013-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

/*
 * Triangulations of a pentagon
 */

unitsize(1cm);

picture base;

unitsize(base, 1cm);

real r = 0.7;

pair pv = r * (0, 1),
     w = expi(2 * pi / 5);

int i;

pair[] v;

for(i = 0; i < 5; ++i) {
  v[i] = pv;
  pv *= w;
  draw(base, v[i] -- pv);
};

int [][] d = {
  {0, 2, 0, 3},
  {0, 2, 2, 4},
  {0, 3, 1, 3},
  {1, 3, 1, 4},
  {1, 4, 2, 4}
};

for(i = 0; i < d.length; ++i) {
  erase();
  draw(v[d[i][0]] -- v[d[i][1]]);
  draw(v[d[i][2]] -- v[d[i][3]]);
  add(base);
  shipout(format("images/triangulation-%d", i + 1));
}
