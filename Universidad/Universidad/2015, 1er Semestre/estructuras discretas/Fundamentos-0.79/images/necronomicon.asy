/* necronomicon.asy*/

/* Copyright (c) 2011-2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

/*
 * Written to roughly match <img259.imageshack.us>,
 * <http://www.epilogue.net/cgi/database/art/view.pl?id=81813>,
 * <http://symboldictionary.net/?p=1365>, and others.
 *
 * Called "Sigil of the gate" or "Gate of Yog-Sohot".
 *
 * Origin of the icon is unknown, <http://www.spelwerkx.com/symbols.html>
 * describes it as a false sigil usually found on (fake) editions of
 * the legendary Necronomicon that is mentioned in works by
 * H. P. Lovecraft.
 */

unitsize(1cm);

currentpen = Black + 5;

real r = 5;

draw(circle((0, 0), r), Black + 9);

pair a = expi(2 * pi / 5);
pair[] b = {(0, r), (0, r) * a, (0, r) * a^2, (0, r) * a^3, (0, r) * a^4};

draw(b[0] -- b[2] -- b[4] -- b[1] -- b[3] -- b[0]);

draw(circle((-0.8 * r - 0.3, 0), 0.3));
draw((-0.8 * r, 0) -- (0.85 * r, 0) --
     (0.85 * r, 0)  -- ((0.85 * r, 0) - 0.7 * (b[4] - b[2])) --
     ((0.85 * r, 0) - 0.7 * (b[4] - b[2]) - 0.87 * (b[2] - b[0])));

pair ta = (0.85 * r, 0) - 0.7 * (b[4] - b[2]) - 0.855 * (b[2] - b[0]),
     tb = ta + 0.22 * r * expi(angle(b[2] - b[0]) + pi / 2),
     tc = tb + 0.025 * (b[2] - b[0]),
     td = (0, r) * a^3.53,
     te = td - 0.17 * (b[4] - b[2]),
     tf = (te + td) / 2 + (0, 0.25);

draw(arc((ta + tb) / 2, ta, tb, CW));
draw(tb -- tc);
draw(circle(tc + 0.3 * expi(angle(b[2] - b[0])), 0.3));

pair tt = (0, r * 1.08);
pair[] tta = intersectionpoints(circle((0, 0), r), tt -- b[3] + (0.5 * r, 0));
pair[] ttb = intersectionpoints(circle((0, 0), r), tt -- b[2] - (0.5 * r, 0));
pair[] ttc = intersectionpoints(td .. tf ..te, tta[0] -- tta[1]);

draw(tta[0] -- ttc[0]);
draw(ttb[0] -- ttb[1]);

pair cc = (b[2] + 2 * ((0.8 * r, 0) - 0.7 * (b[4] - b[2]))) / (1 + 2);
draw(circle(cc, 0.3));
draw(ttb[1] .. (ttb[1] + cc) / 2.5 .. cc + 0.3);

draw(td .. tf .. te);
