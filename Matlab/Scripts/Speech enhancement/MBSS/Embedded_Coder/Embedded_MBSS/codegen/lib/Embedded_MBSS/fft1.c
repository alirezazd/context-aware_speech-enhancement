/*
 * File: fft1.c
 *
 * MATLAB Coder version            : 4.3
 * C/C++ source code generated on  : 14-Oct-2020 13:35:35
 */

/* Include Files */
#include "fft1.h"
#include "Embedded_MBSS.h"
#include "Embedded_MBSS_emxutil.h"
#include "rt_nonfinite.h"

/* Function Definitions */

/*
 * Arguments    : int n1
 *                bool useRadix2
 *                int *N2blue
 *                int *nRows
 * Return Type  : void
 */
void get_algo_sizes(int n1, bool useRadix2, int *N2blue, int *nRows)
{
  int n;
  int pmax;
  int pmin;
  bool exitg1;
  int k;
  int pow2p;
  *N2blue = 1;
  if (useRadix2) {
    *nRows = n1;
  } else {
    if (n1 > 0) {
      n = (n1 + n1) - 1;
      pmax = 31;
      if (n > MIN_int32_T) {
        if (n < 0) {
          n = -n;
        }

        if (n <= 1) {
          pmax = 0;
        } else {
          pmin = 0;
          exitg1 = false;
          while ((!exitg1) && (pmax - pmin > 1)) {
            k = (pmin + pmax) >> 1;
            pow2p = 1 << k;
            if (pow2p == n) {
              pmax = k;
              exitg1 = true;
            } else if (pow2p > n) {
              pmax = k;
            } else {
              pmin = k;
            }
          }
        }
      }

      *N2blue = 1 << pmax;
    }

    *nRows = *N2blue;
  }
}

/*
 * Arguments    : const emxArray_creal_T *x
 *                int xoffInit
 *                int unsigned_nRows
 *                const emxArray_real_T *costab
 *                const emxArray_real_T *sintab
 *                emxArray_creal_T *y
 * Return Type  : void
 */
void r2br_r2dit_trig_impl(const emxArray_creal_T *x, int xoffInit, int
  unsigned_nRows, const emxArray_real_T *costab, const emxArray_real_T *sintab,
  emxArray_creal_T *y)
{
  int istart;
  int nRowsD2;
  int nRowsD4;
  int iy;
  int ix;
  int ju;
  int i;
  bool tst;
  double temp_re;
  double temp_im;
  double twid_re;
  double twid_im;
  int temp_re_tmp;
  int j;
  int ihi;
  istart = x->size[0];
  if (istart >= unsigned_nRows) {
    istart = unsigned_nRows;
  }

  nRowsD2 = unsigned_nRows / 2;
  nRowsD4 = nRowsD2 / 2;
  iy = y->size[0];
  y->size[0] = unsigned_nRows;
  emxEnsureCapacity_creal_T(y, iy);
  if (unsigned_nRows > x->size[0]) {
    iy = y->size[0];
    y->size[0] = unsigned_nRows;
    emxEnsureCapacity_creal_T(y, iy);
    for (iy = 0; iy < unsigned_nRows; iy++) {
      y->data[iy].re = 0.0;
      y->data[iy].im = 0.0;
    }
  }

  ix = xoffInit;
  ju = 0;
  iy = 0;
  for (i = 0; i <= istart - 2; i++) {
    y->data[iy] = x->data[ix];
    iy = unsigned_nRows;
    tst = true;
    while (tst) {
      iy >>= 1;
      ju ^= iy;
      tst = ((ju & iy) == 0);
    }

    iy = ju;
    ix++;
  }

  y->data[iy] = x->data[ix];
  iy = unsigned_nRows - 2;
  if (unsigned_nRows > 1) {
    for (i = 0; i <= iy; i += 2) {
      temp_re = y->data[i + 1].re;
      temp_im = y->data[i + 1].im;
      twid_re = y->data[i].re;
      twid_im = y->data[i].im;
      y->data[i + 1].re = y->data[i].re - y->data[i + 1].re;
      y->data[i + 1].im = y->data[i].im - y->data[i + 1].im;
      twid_re += temp_re;
      twid_im += temp_im;
      y->data[i].re = twid_re;
      y->data[i].im = twid_im;
    }
  }

  iy = 2;
  ix = 4;
  ju = ((nRowsD4 - 1) << 2) + 1;
  while (nRowsD4 > 0) {
    for (i = 0; i < ju; i += ix) {
      temp_re_tmp = i + iy;
      temp_re = y->data[temp_re_tmp].re;
      temp_im = y->data[temp_re_tmp].im;
      y->data[temp_re_tmp].re = y->data[i].re - y->data[temp_re_tmp].re;
      y->data[temp_re_tmp].im = y->data[i].im - y->data[temp_re_tmp].im;
      y->data[i].re += temp_re;
      y->data[i].im += temp_im;
    }

    istart = 1;
    for (j = nRowsD4; j < nRowsD2; j += nRowsD4) {
      twid_re = costab->data[j];
      twid_im = sintab->data[j];
      i = istart;
      ihi = istart + ju;
      while (i < ihi) {
        temp_re_tmp = i + iy;
        temp_re = twid_re * y->data[temp_re_tmp].re - twid_im * y->
          data[temp_re_tmp].im;
        temp_im = twid_re * y->data[temp_re_tmp].im + twid_im * y->
          data[temp_re_tmp].re;
        y->data[temp_re_tmp].re = y->data[i].re - temp_re;
        y->data[temp_re_tmp].im = y->data[i].im - temp_im;
        y->data[i].re += temp_re;
        y->data[i].im += temp_im;
        i += ix;
      }

      istart++;
    }

    nRowsD4 /= 2;
    iy = ix;
    ix += ix;
    ju -= iy;
  }
}

/*
 * File trailer for fft1.c
 *
 * [EOF]
 */
