/*
 * File: fft.c
 *
 * MATLAB Coder version            : 4.3
 * C/C++ source code generated on  : 14-Oct-2020 13:35:35
 */

/* Include Files */
#include "fft.h"
#include "Embedded_MBSS.h"
#include "Embedded_MBSS_emxutil.h"
#include "fft1.h"
#include "rt_nonfinite.h"
#include <math.h>

/* Function Definitions */

/*
 * Arguments    : const emxArray_real_T *x
 *                float varargin_1
 *                emxArray_creal_T *y
 * Return Type  : void
 */
void fft(const emxArray_real_T *x, float varargin_1, emxArray_creal_T *y)
{
  emxArray_real_T *costab1q;
  emxArray_real_T *costab;
  emxArray_real_T *sintab;
  emxArray_real_T *sintabinv;
  emxArray_creal_T *wwc;
  emxArray_creal_T *fy;
  emxArray_creal_T *fv;
  bool guard1 = false;
  int n1;
  int minNrowsNx;
  bool useRadix2;
  int nd2;
  int N2blue;
  int rt;
  double twid_re;
  int idx;
  int ihi;
  int nInt2m1;
  int nRowsD2;
  int nRowsD4;
  double nt_im;
  double nt_re;
  double twid_im;
  int nt_re_tmp;
  emxInit_real_T(&costab1q, 2);
  emxInit_real_T(&costab, 2);
  emxInit_real_T(&sintab, 2);
  emxInit_real_T(&sintabinv, 2);
  emxInit_creal_T(&wwc, 1);
  emxInit_creal_T(&fy, 1);
  emxInit_creal_T(&fv, 1);
  guard1 = false;
  if (x->size[0] == 0) {
    guard1 = true;
  } else {
    n1 = (int)varargin_1;
    if (n1 == 0) {
      guard1 = true;
    } else {
      minNrowsNx = n1 - 1;
      useRadix2 = ((n1 > 0) && ((n1 & minNrowsNx) == 0));
      get_algo_sizes((int)varargin_1, useRadix2, &N2blue, &nd2);
      twid_re = 6.2831853071795862 / (double)nd2;
      idx = nd2 / 2 / 2;
      rt = costab1q->size[0] * costab1q->size[1];
      costab1q->size[0] = 1;
      costab1q->size[1] = idx + 1;
      emxEnsureCapacity_real_T(costab1q, rt);
      costab1q->data[0] = 1.0;
      nd2 = idx / 2 - 1;
      for (ihi = 0; ihi <= nd2; ihi++) {
        costab1q->data[ihi + 1] = cos(twid_re * ((double)ihi + 1.0));
      }

      rt = nd2 + 2;
      nd2 = idx - 1;
      for (ihi = rt; ihi <= nd2; ihi++) {
        costab1q->data[ihi] = sin(twid_re * (double)(idx - ihi));
      }

      costab1q->data[idx] = 0.0;
      if (!useRadix2) {
        idx = costab1q->size[1] - 1;
        nd2 = (costab1q->size[1] - 1) << 1;
        rt = costab->size[0] * costab->size[1];
        costab->size[0] = 1;
        costab->size[1] = nd2 + 1;
        emxEnsureCapacity_real_T(costab, rt);
        rt = sintab->size[0] * sintab->size[1];
        sintab->size[0] = 1;
        sintab->size[1] = nd2 + 1;
        emxEnsureCapacity_real_T(sintab, rt);
        costab->data[0] = 1.0;
        sintab->data[0] = 0.0;
        rt = sintabinv->size[0] * sintabinv->size[1];
        sintabinv->size[0] = 1;
        sintabinv->size[1] = nd2 + 1;
        emxEnsureCapacity_real_T(sintabinv, rt);
        for (ihi = 0; ihi < idx; ihi++) {
          sintabinv->data[ihi + 1] = costab1q->data[(idx - ihi) - 1];
        }

        rt = costab1q->size[1];
        for (ihi = rt; ihi <= nd2; ihi++) {
          sintabinv->data[ihi] = costab1q->data[ihi - idx];
        }

        for (ihi = 0; ihi < idx; ihi++) {
          costab->data[ihi + 1] = costab1q->data[ihi + 1];
          sintab->data[ihi + 1] = -costab1q->data[(idx - ihi) - 1];
        }

        rt = costab1q->size[1];
        for (ihi = rt; ihi <= nd2; ihi++) {
          costab->data[ihi] = -costab1q->data[nd2 - ihi];
          sintab->data[ihi] = -costab1q->data[ihi - idx];
        }
      } else {
        idx = costab1q->size[1] - 1;
        nd2 = (costab1q->size[1] - 1) << 1;
        rt = costab->size[0] * costab->size[1];
        costab->size[0] = 1;
        costab->size[1] = nd2 + 1;
        emxEnsureCapacity_real_T(costab, rt);
        rt = sintab->size[0] * sintab->size[1];
        sintab->size[0] = 1;
        sintab->size[1] = nd2 + 1;
        emxEnsureCapacity_real_T(sintab, rt);
        costab->data[0] = 1.0;
        sintab->data[0] = 0.0;
        for (ihi = 0; ihi < idx; ihi++) {
          costab->data[ihi + 1] = costab1q->data[ihi + 1];
          sintab->data[ihi + 1] = -costab1q->data[(idx - ihi) - 1];
        }

        rt = costab1q->size[1];
        for (ihi = rt; ihi <= nd2; ihi++) {
          costab->data[ihi] = -costab1q->data[nd2 - ihi];
          sintab->data[ihi] = -costab1q->data[ihi - idx];
        }

        sintabinv->size[0] = 1;
        sintabinv->size[1] = 0;
      }

      if (useRadix2) {
        nInt2m1 = x->size[0];
        if (nInt2m1 >= n1) {
          nInt2m1 = n1;
        }

        nRowsD2 = n1 / 2;
        nRowsD4 = nRowsD2 / 2;
        rt = y->size[0];
        y->size[0] = n1;
        emxEnsureCapacity_creal_T(y, rt);
        if (n1 > x->size[0]) {
          rt = y->size[0];
          y->size[0] = n1;
          emxEnsureCapacity_creal_T(y, rt);
          for (rt = 0; rt < n1; rt++) {
            y->data[rt].re = 0.0;
            y->data[rt].im = 0.0;
          }
        }

        minNrowsNx = 0;
        rt = 0;
        nd2 = 0;
        for (N2blue = 0; N2blue <= nInt2m1 - 2; N2blue++) {
          y->data[nd2].re = x->data[minNrowsNx];
          y->data[nd2].im = 0.0;
          idx = n1;
          useRadix2 = true;
          while (useRadix2) {
            idx >>= 1;
            rt ^= idx;
            useRadix2 = ((rt & idx) == 0);
          }

          nd2 = rt;
          minNrowsNx++;
        }

        y->data[nd2].re = x->data[minNrowsNx];
        y->data[nd2].im = 0.0;
        nd2 = n1 - 2;
        if (n1 > 1) {
          for (N2blue = 0; N2blue <= nd2; N2blue += 2) {
            nt_re = y->data[N2blue + 1].re;
            nt_im = y->data[N2blue + 1].im;
            twid_im = y->data[N2blue].re;
            twid_re = y->data[N2blue].im;
            y->data[N2blue + 1].re = y->data[N2blue].re - y->data[N2blue + 1].re;
            y->data[N2blue + 1].im = y->data[N2blue].im - y->data[N2blue + 1].im;
            twid_im += nt_re;
            twid_re += nt_im;
            y->data[N2blue].re = twid_im;
            y->data[N2blue].im = twid_re;
          }
        }

        nd2 = 2;
        minNrowsNx = 4;
        rt = ((nRowsD4 - 1) << 2) + 1;
        while (nRowsD4 > 0) {
          for (N2blue = 0; N2blue < rt; N2blue += minNrowsNx) {
            nt_re_tmp = N2blue + nd2;
            nt_re = y->data[nt_re_tmp].re;
            nt_im = y->data[nt_re_tmp].im;
            y->data[nt_re_tmp].re = y->data[N2blue].re - y->data[nt_re_tmp].re;
            y->data[nt_re_tmp].im = y->data[N2blue].im - y->data[nt_re_tmp].im;
            y->data[N2blue].re += nt_re;
            y->data[N2blue].im += nt_im;
          }

          nInt2m1 = 1;
          for (idx = nRowsD4; idx < nRowsD2; idx += nRowsD4) {
            twid_re = costab->data[idx];
            twid_im = sintab->data[idx];
            N2blue = nInt2m1;
            ihi = nInt2m1 + rt;
            while (N2blue < ihi) {
              nt_re_tmp = N2blue + nd2;
              nt_re = twid_re * y->data[nt_re_tmp].re - twid_im * y->
                data[nt_re_tmp].im;
              nt_im = twid_re * y->data[nt_re_tmp].im + twid_im * y->
                data[nt_re_tmp].re;
              y->data[nt_re_tmp].re = y->data[N2blue].re - nt_re;
              y->data[nt_re_tmp].im = y->data[N2blue].im - nt_im;
              y->data[N2blue].re += nt_re;
              y->data[N2blue].im += nt_im;
              N2blue += minNrowsNx;
            }

            nInt2m1++;
          }

          nRowsD4 /= 2;
          nd2 = minNrowsNx;
          minNrowsNx += minNrowsNx;
          rt -= nd2;
        }
      } else {
        nInt2m1 = (n1 + n1) - 1;
        rt = wwc->size[0];
        wwc->size[0] = nInt2m1;
        emxEnsureCapacity_creal_T(wwc, rt);
        idx = n1;
        rt = 0;
        wwc->data[minNrowsNx].re = 1.0;
        wwc->data[minNrowsNx].im = 0.0;
        nd2 = n1 << 1;
        for (ihi = 0; ihi <= n1 - 2; ihi++) {
          minNrowsNx = ((ihi + 1) << 1) - 1;
          if (nd2 - rt <= minNrowsNx) {
            rt += minNrowsNx - nd2;
          } else {
            rt += minNrowsNx;
          }

          nt_im = -3.1415926535897931 * (double)rt / (double)n1;
          if (nt_im == 0.0) {
            nt_re = 1.0;
            nt_im = 0.0;
          } else {
            nt_re = cos(nt_im);
            nt_im = sin(nt_im);
          }

          wwc->data[idx - 2].re = nt_re;
          wwc->data[idx - 2].im = -nt_im;
          idx--;
        }

        idx = 0;
        rt = nInt2m1 - 1;
        for (ihi = rt; ihi >= n1; ihi--) {
          wwc->data[ihi] = wwc->data[idx];
          idx++;
        }

        minNrowsNx = x->size[0];
        if (n1 < minNrowsNx) {
          minNrowsNx = n1;
        }

        rt = y->size[0];
        y->size[0] = n1;
        emxEnsureCapacity_creal_T(y, rt);
        if (n1 > x->size[0]) {
          rt = y->size[0];
          y->size[0] = n1;
          emxEnsureCapacity_creal_T(y, rt);
          for (rt = 0; rt < n1; rt++) {
            y->data[rt].re = 0.0;
            y->data[rt].im = 0.0;
          }
        }

        nd2 = 0;
        for (ihi = 0; ihi < minNrowsNx; ihi++) {
          nt_re_tmp = (n1 + ihi) - 1;
          y->data[ihi].re = wwc->data[nt_re_tmp].re * x->data[nd2];
          y->data[ihi].im = wwc->data[nt_re_tmp].im * -x->data[nd2];
          nd2++;
        }

        rt = minNrowsNx + 1;
        for (ihi = rt; ihi <= n1; ihi++) {
          y->data[ihi - 1].re = 0.0;
          y->data[ihi - 1].im = 0.0;
        }

        r2br_r2dit_trig_impl(y, 0, N2blue, costab, sintab, fy);
        r2br_r2dit_trig_impl(wwc, 0, N2blue, costab, sintab, fv);
        nd2 = fy->size[0];
        for (rt = 0; rt < nd2; rt++) {
          twid_re = fy->data[rt].re * fv->data[rt].im + fy->data[rt].im *
            fv->data[rt].re;
          fy->data[rt].re = fy->data[rt].re * fv->data[rt].re - fy->data[rt].im *
            fv->data[rt].im;
          fy->data[rt].im = twid_re;
        }

        r2br_r2dit_trig_impl(fy, 0, N2blue, costab, sintabinv, fv);
        if (fv->size[0] > 1) {
          twid_re = 1.0 / (double)fv->size[0];
          nd2 = fv->size[0];
          for (rt = 0; rt < nd2; rt++) {
            fv->data[rt].re *= twid_re;
            fv->data[rt].im *= twid_re;
          }
        }

        idx = 0;
        rt = wwc->size[0];
        for (ihi = n1; ihi <= rt; ihi++) {
          y->data[idx].re = wwc->data[ihi - 1].re * fv->data[ihi - 1].re +
            wwc->data[ihi - 1].im * fv->data[ihi - 1].im;
          y->data[idx].im = wwc->data[ihi - 1].re * fv->data[ihi - 1].im -
            wwc->data[ihi - 1].im * fv->data[ihi - 1].re;
          idx++;
        }
      }
    }
  }

  if (guard1) {
    nd2 = (int)varargin_1;
    rt = y->size[0];
    y->size[0] = nd2;
    emxEnsureCapacity_creal_T(y, rt);
    if (nd2 > x->size[0]) {
      rt = y->size[0];
      y->size[0] = nd2;
      emxEnsureCapacity_creal_T(y, rt);
      for (rt = 0; rt < nd2; rt++) {
        y->data[rt].re = 0.0;
        y->data[rt].im = 0.0;
      }
    }
  }

  emxFree_creal_T(&fv);
  emxFree_creal_T(&fy);
  emxFree_creal_T(&wwc);
  emxFree_real_T(&sintabinv);
  emxFree_real_T(&sintab);
  emxFree_real_T(&costab);
  emxFree_real_T(&costab1q);
}

/*
 * File trailer for fft.c
 *
 * [EOF]
 */
