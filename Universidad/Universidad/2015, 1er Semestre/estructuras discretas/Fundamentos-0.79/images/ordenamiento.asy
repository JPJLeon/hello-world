/* ordenamiento.asy*/

/* Copyright (c) 2009-2010, 2012, 2014 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

/* Àrbol mostrando ordenamiento */
texpreamble("\usepackage{lmodern, fourier, amssymb}");
defaultpen(fontsize(10));

import drawtree;

treeNodeStep	 = 0.5cm;
treeLevelStep	 = 1cm;
treeMinNodeWidth = 1.5cm;

TreeNode makeUBNode(TreeNode parent = null, Label l)
{
  frame f;

  label(f, l);
  return makeNode(parent, f);
}

TreeNode root = makeUBNode("\rule[-0.5ex]{0pt}{2.4ex}\(a : b\)");

TreeNode c1   = makeUBNode(root, "\rule[-0.5ex]{0pt}{2.4ex}\(b : c\)");
TreeNode c2   = makeUBNode(root, "\rule[-0.5ex]{0pt}{2.4ex}\(b : c\)");

TreeNode g1   = makeUBNode(c1,	 "\rule[-0.5ex]{0pt}{2.4ex}\(a, b, c\)");
TreeNode g2   = makeUBNode(c1,	 "\rule[-0.5ex]{0pt}{2.4ex}\(a : c\)");
TreeNode g3   = makeUBNode(c2,	 "\rule[-0.5ex]{0pt}{2.4ex}\(a : c\)");
TreeNode g4   = makeUBNode(c2,	 "\rule[-0.5ex]{0pt}{2.4ex}\(c, b, a\)");

TreeNode gg1  = makeUBNode(g2,	 "\rule[-0.5ex]{0pt}{2.4ex}\(a, c, b\)");
TreeNode gg2  = makeUBNode(g2,	 "\rule[-0.5ex]{0pt}{2.4ex}\(c, a, b\)");
TreeNode gg3  = makeUBNode(g3,	 "\rule[-0.5ex]{0pt}{2.4ex}\(b, a, c\)");
TreeNode gg4  = makeUBNode(g3,	 "\rule[-0.5ex]{0pt}{2.4ex}\(b, c, a\)");

draw(root, (0,0));
