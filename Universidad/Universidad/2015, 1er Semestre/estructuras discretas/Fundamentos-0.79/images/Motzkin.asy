/* Motzkin.asy*/

/* Copyright (c) 2013-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

/*
 * Matchings in K5 (illustration for Motzkin numbers)
 */

unitsize(1cm);

picture base;

unitsize(base, 1cm);

real r = 0.7;

draw(base, circle((0, 0), r));

pair pv = r * (0, 1),
     w = expi(2 * pi / 5);

int i;

pair[] v;

for(i = 0; i < 5; ++i) {
  v[i] = pv;
  filldraw(base, circle(pv, 0.05));
  pv *= w;
}

int[][] m = {
  {},
  {0, 1},
  {0, 1, 2, 3},
  {0, 1, 2, 4},
  {0, 1, 3, 4},
  {0, 2},
  {0, 2, 3, 4},
  {0, 3},
  {0, 3, 1, 2},
  {0, 4},
  {0, 4, 1, 2},
  {0, 4, 1, 3},
  {0, 4, 2, 3},
  {1, 2},
  {1, 2, 3, 4},
  {1, 3},
  {1, 4},
  {1, 4, 2, 3},
  {2, 3},
  {2, 4},
  {3, 4}
};

for(i = 0; i < m.length; ++i) {
  erase();
  if(m[i].length > 0) {
    draw(v[m[i][0]] -- v[m[i][1]], red);
    if(m[i].length > 2) {
      draw(v[m[i][2]] -- v[m[i][3]], red);
    }
  }
  add(base);
  shipout(format("images/Motzkin-%02d", i + 1));
}
