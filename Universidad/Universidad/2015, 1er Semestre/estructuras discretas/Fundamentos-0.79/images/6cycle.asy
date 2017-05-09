/* 6cycle.asy*/

/* Copyright (c) 2012-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graph;

unitsize(1cm);
defaultpen(fontsize(10));

int k;

string[] c1 = {"\(a\)"};
string[] c2 = {"\(a\)", "\(b\)"};
string[] c3 = {"\(a\)", "\(a\)", "\(b\)"};
string[] c6 = {"\(a\)", "\(a\)", "\(b\)", "\(a\)", "\(b\)", "\(a\)"};

void DrawCycle(string[] c)
{
  int k;

  for(k = 0; k < 6; ++k)
    label(c[k % c.length], 0.75 * expi(pi * k / 3), Align);
}

DrawCycle(c1);

shipout("images/6cycle-1");

erase();

DrawCycle(c2);

shipout("images/6cycle-2");

erase();

DrawCycle(c3);

shipout("images/6cycle-3");

erase();

DrawCycle(c6);

shipout("images/6cycle-6");
