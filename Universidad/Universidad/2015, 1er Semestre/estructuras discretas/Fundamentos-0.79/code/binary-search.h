# binary-search.h
#
# Copyright (c) 2012, 2014 Horst H. von Brand
# Bajo licencia MIT. Vea LICENSE-MIT para detalles

/** @file binary-search.h
 *  @brief Binary search declarations
 */

#ifndef BINARY_SEARCH_H
#define BINARY_SEARCH_H

/** @var typedef double DataType
 *  @brief Type of elements handled
 */

typedef double DataType;

/** @fn int binarysearch(DataType t, DataType x[], int n)
 *  @param t is searched for
 *  @param x is a sorted array of @a n elements
 *  @param n size of array @a x
 *
 *  @brief Returns the position of @a t in @a x if there,
 *	   -1 if it isn't
 */

int binarysearch(const DataType t, const DataType x[], const int n);
#endif /* !BINARY_SEARCH_H */
