/*
 * File: fft1.h
 *
 * MATLAB Coder version            : 4.3
 * C/C++ source code generated on  : 14-Oct-2020 13:35:35
 */

#ifndef FFT1_H
#define FFT1_H

/* Include Files */
#include <stddef.h>
#include <stdlib.h>
#include "rtwtypes.h"
#include "Embedded_MBSS_types.h"

/* Function Declarations */
extern void get_algo_sizes(int n1, bool useRadix2, int *N2blue, int *nRows);
extern void r2br_r2dit_trig_impl(const emxArray_creal_T *x, int xoffInit, int
  unsigned_nRows, const emxArray_real_T *costab, const emxArray_real_T *sintab,
  emxArray_creal_T *y);

#endif

/*
 * File trailer for fft1.h
 *
 * [EOF]
 */
