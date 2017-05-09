/* Sethi.asy*/

/* Copyright (c) 2009-2010, 2012 Horst H. von Brand */
/* Bajo licencia MIT. Vea LICENSE-MIT para detalles */

/* Árbol sintáctico para generación de código */

texpreamble("\usepackage{lmodern, fourier, amssymb}");
texpreamble("\usepackage{listings}\lstset{language=C}");

import texcolors;
import drawtree;

unitsize(1cm);
defaultpen(fontsize(10));

treeNodeStep = 0.5cm;
treeLevelStep = 1cm;
treeMinNodeWidth = 1cm;

TreeNode makeUBNode(TreeNode parent = null, Label l)
{
  frame f;

  label(f, l);
  return makeNode(parent, f);
}

TreeNode root = makeUBNode("\rule[-0.7ex]{0pt}{3.0ex}\lstinline!+!\({}^3\)");

TreeNode a1   = makeUBNode(root,
			 "\rule[-0.7ex]{0pt}{3.0ex}\lstinline!*!\({}^2\)");
TreeNode a2   = makeUBNode(root,
			 "\rule[-0.7ex]{0pt}{3.0ex}\lstinline!+!\({}^3\)");

TreeNode b1   = makeUBNode(a1,
			 "\rule[-0.7ex]{0pt}{3.0ex}\lstinline!a!\({}^1\)");
TreeNode b2   = makeUBNode(a1,
			 "\rule[-0.7ex]{0pt}{3.0ex}\lstinline!x!\({}^1\)");

TreeNode b3   = makeUBNode(a2,
			 "\rule[-0.7ex]{0pt}{3.0ex}\lstinline!*!\({}^2\)");
TreeNode b4   = makeUBNode(a2,
			 "\rule[-0.7ex]{0pt}{3.0ex}\lstinline!*!\({}^2\)");

TreeNode c1   = makeUBNode(b3,
			 "\rule[-0.7ex]{0pt}{3.0ex}\lstinline!b!\({}^1\)");
TreeNode c2   = makeUBNode(b3,
			 "\rule[-0.7ex]{0pt}{3.0ex}\lstinline!y!\({}^1\)");

TreeNode c3   = makeUBNode(b4,
			 "\rule[-0.7ex]{0pt}{3.0ex}\lstinline!c!\({}^1\)");
TreeNode c4   = makeUBNode(b4,
			 "\rule[-0.7ex]{0pt}{3.0ex}\lstinline!-!\({}^2\)");

TreeNode d1   = makeUBNode(c4,
			 "\rule[-0.7ex]{0pt}{3.0ex}\lstinline!+!\({}^2\)");

TreeNode e1   = makeUBNode(d1,
			 "\rule[-0.7ex]{0pt}{3.0ex}\lstinline!u!\({}^1\)");
TreeNode e2   = makeUBNode(d1,
			 "\rule[-0.7ex]{0pt}{3.0ex}\lstinline!v!\({}^1\)");

draw(root, (0, 0));
