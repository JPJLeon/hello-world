/* badges.asy*/

/* Copyright (c) 2010, 2012-2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

import badge;

unitsize(1cm / 1.2^(5 / 3));

DrawBadge(3, new pair[] {(1, 1)});

shipout("images/badge-3a");

erase();

DrawBadge(3, new pair[] {(1, 2)});

shipout("images/badge-3b");

erase();

DrawBadge(3, new pair[] {(2, 2)});

shipout("images/badge-3c");

erase();

DrawBadge(5, new pair[] {(1, 1)});

shipout("images/badge-5a");

erase();

DrawBadge(5, new pair[] {(1, 2)});

shipout("images/badge-5b");

erase();

DrawBadge(5, new pair[] {(1, 3)});

shipout("images/badge-5c");

erase();

DrawBadge(5, new pair[] {(2, 2)});

shipout("images/badge-5d");

erase();

DrawBadge(5, new pair[] {(2, 3)});

shipout("images/badge-5e");

erase();

DrawBadge(5, new pair[] {(3, 3)});

shipout("images/badge-5f");

erase();

fill((1, 1) -- (1, 6) -- (6, 6) -- (6, 1) -- cycle, Gray * 0.6);

DrawBadge(7, new pair[] {});

shipout("images/badge-7");

erase();

DrawBadge(3, new pair[] {(3, 1), (3, 2)});

shipout("images/badge-1");

erase();

DrawBadge(3, new pair[] {(1, 2), (1, 3)});

shipout("images/badge-2");

erase();

DrawBadge(3, new pair[] {(2, 2), (3, 3)});

shipout("images/badge-3");

erase();

DrawBadge(3, new pair[] {(1, 2), (3, 2)});

shipout("images/badge-r2-a");

erase();

DrawBadge(3, new pair[] {(2, 1), (2, 3)});

shipout("images/badge-r2-b");

erase();

DrawBadge(3, new pair[] {(1, 1), (3, 3)});

shipout("images/badge-r2-c");

erase();

DrawBadge(3, new pair[] {(1, 3), (3, 1)});

shipout("images/badge-r2-d");

erase();

DrawBadge(3, new pair[] {(1, 1), (1, 3)});

shipout("images/badge-v-a");

erase();

DrawBadge(3, new pair[] {(2, 1), (2, 3)});

shipout("images/badge-v-b");

erase();

DrawBadge(3, new pair[] {(3, 1), (3, 3)});

shipout("images/badge-v-c");

erase();

DrawBadge(3, new pair[] {(1, 2), (2, 2)});

shipout("images/badge-v-d");

erase();

DrawBadge(3, new pair[] {(1, 2), (3, 2)});

shipout("images/badge-v-e");

erase();

DrawBadge(3, new pair[] {(2, 2), (3, 2)});

shipout("images/badge-v-f");

erase();

DrawBadge(3, new pair[] {(1, 2), (2, 3)});

shipout("images/badge-d-a");

erase();

DrawBadge(3, new pair[] {(1, 1), (3, 3)});

shipout("images/badge-d-b");

erase();

DrawBadge(3, new pair[] {(2, 1), (3, 2)});

shipout("images/badge-d-c");

erase();

DrawBadge(3, new pair[] {(1, 3), (2, 2)});

shipout("images/badge-d-d");

erase();

DrawBadge(3, new pair[] {(1, 3), (3, 1)});

shipout("images/badge-d-e");

erase();

DrawBadge(3, new pair[] {(2, 2), (3, 1)});

shipout("images/badge-d-f");

erase();

DrawBadge(3, new pair[] {(1, 1), (1, 2)});

shipout("images/badge-a");

erase();

DrawBadge(3, new pair[] {(1, 1), (2, 2)});

shipout("images/badge-b");

erase();

DrawBadge(3, new pair[] {(1, 1), (3, 2)});

shipout("images/badge-c");

erase();

DrawBadge(3, new pair[] {(1, 2), (2, 1)});

shipout("images/badge-d");

erase();

DrawBadge(3, new pair[] {(2, 1), (2, 2)});

shipout("images/badge-e");

erase();

DrawBadge(3, new pair[] {(1, 1), (1, 3)});

shipout("images/badge-f");

erase();

DrawBadge(3, new pair[] {(1, 1), (3, 3)});

shipout("images/badge-g");

erase();

DrawBadge(3, new pair[] {(2, 1), (2, 3)});

shipout("images/badge-h");
