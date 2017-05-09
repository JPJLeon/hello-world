/* LFSR.asy*/

/* Copyright (c) 2012-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import graph;

unitsize(1.2mm);
defaultpen(fontsize(10));

arrowfactor = 9;
arrowhead Head = HookHead(0, 4);

void draw_reg(pair p)
{
  draw(p + (-3.5, -3.5) -- p + (-3.5, 3.5)
       -- p + (3.5, 3.5) -- p + (3.5, -3.5) -- cycle);
};

void draw_xor(pair p)
{
  draw(circle(p, 2));
  draw(p + (0, -2) -- p + (0, 2));
  draw(p + (-2, 0) -- p + (2, 0));
}

void draw_LFSR(int[] c)
{
  int i, len;

  len = c.length - 1;
  draw((-20, 0) -- (-12.5, 0), Arrow(Head));
  draw((-20, 0) -- (-3.5, 0));
  for(i = 0; i < len; ++i) {
    draw_reg(i * (19, 0));
    draw(i * (19, 0) + (3.5, 0) -- (i + 1) * (19, 0) - (3.5, 0));
  }
  draw((len - 1) * (19, 0) + (3.5, 0)
	 -- (len - 1) * (19, 0) + (18, 0), Arrow(Head));
  draw((-9.5, 0) -- (-9.5, 18) -- ((len - 1) * 19 + 9.5, 18));
  draw(((len - 1) * 19 + 9.5, 0) -- ((len - 1) * 19 + 9.5, 18), Arrow(Head));
  filldraw(circle((len * 19 - 9.5, 0), 0.5));
  for(i = 0; i < len; ++i) {
    if(c[i] == 1) {
      draw_xor((i * 19 - 9.5, 0));
      if(i != 0)
	filldraw(circle((i * 19 - 9.5, 18), 0.5));
      draw((i * 19 - 9.5, 18) -- (i * 19 - 9.5, 2), Arrow(Head));
    }
  }
}

draw((0, 0) -- (0, -3.5), white); /* For spacing */

draw((-9, 0) -- (-2, 0), Arrow(Head));
draw(( 2, 0) -- ( 7, 0), Arrow(Head));
draw(( 0, 7) -- ( 0, 2), Arrow(Head));
draw_xor((0, 0));

label("\(x_t\)", (-9, 0), LeftSide);
label("\(y_t\)", (0, 7), N);
label("\(x_{t - 1} \oplus y_{t - 1}\)", (7, 0), RightSide);

shipout("images/xor");

erase();

draw((-10, 0) -- (-3.5, 0), Arrow(Head));
draw((3.5, 0) -- (10, 0), Arrow(Head));
draw_reg((0, 0));

label("\(x_t\)", (-10, 0), LeftSide);
label("\(x_{t - 1}\)", (10, 0), RightSide);

shipout("images/register");

erase();
unitsize(0.8mm);

draw_LFSR(new int[] {1, 0, 1, 1, 1, 0, 0, 0, 1});

shipout("images/LFSR-11d");
