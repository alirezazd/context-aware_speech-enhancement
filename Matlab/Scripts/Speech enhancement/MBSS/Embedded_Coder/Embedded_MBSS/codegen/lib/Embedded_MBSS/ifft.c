/*
 * File: ifft.c
 *
 * MATLAB Coder version            : 4.3
 * C/C++ source code generated on  : 14-Oct-2020 13:35:35
 */

/* Include Files */
#include "ifft.h"
#include "Embedded_MBSS.h"
#include "Embedded_MBSS_emxutil.h"
#include "fft1.h"
#include "rt_nonfinite.h"
#include <math.h>

/* Function Definitions */

/*
 * Arguments    : const emxArray_creal_T *x
 *                float varargin_1
 *                emxArray_creal_T *y
 * Return Type  : void
 */
void ifft(const emxArray_creal_T *x, float varargin_1, emxArray_creal_T *y)
{
  int n1_tmp;
  emxArray_real_T *costab1q;
  emxArray_real_T *costab;
  emxArray_real_T *sintab;
  emxArray_real_T *sintabinv;
  emxArray_creal_T *wwc;
  emxArray_creal_T *fy;
  emxArray_creal_T *fv;
  int useRadix2_tmp;
  int b_y;
  bool useRadix2;
  int N2blue;
  int nd2;
  double nt_im;
  int rt;
  int k;
  int nInt2m1;
  int idx;
  double nt_re;
  double y_tmp_im;
  n1_tmp = (int)varargin_1;
  emxInit_real_T(&costab1q, 2);
  emxInit_real_T(&costab, 2);
  emxInit_real_T(&sintab, 2);
  emxInit_real_T(&sintabinv, 2);
  emxInit_creal_T(&wwc, 1);
  emxInit_creal_T(&fy, 1);
  emxInit_creal_T(&fv, 1);
  if ((x->size[0] == 0) || (n1_tmp == 0)) {
    b_y = y->size[0];
    y->size[0] = n1_tmp;
    emxEnsureCapacity_creal_T(y, b_y);
    if (n1_tmp > x->size[0]) {
      b_y = y->size[0];
      y->size[0] = n1_tmp;
      emxEnsureCapacity_creal_T(y, b_y);
      for (b_y = 0; b_y < n1_tmp; b_y++) {
        y->data[b_y].re = 0.0;
        y->data[b_y].im = 0.0;
      }
    }
  } else {
    useRadix2_tmp = n1_tmp - 1;
    useRadix2 = ((n1_tmp > 0) && ((n1_tmp & useRadix2_tmp) == 0));
    get_algo_sizes((int)varargin_1, useRadix2, &N2blue, &nd2);
    nt_im = 6.2831853071795862 / (double)nd2;
    rt = nd2 / 2 / 2;
    b_y = costab1q->size[0] * costab1q->size[1];
    costab1q->size[0] = 1;
    costab1q->size[1] = rt + 1;
    emxEnsureCapacity_real_T(costab1q, b_y);
    costab1q->data[0] = 1.0;
    nd2 = rt / 2 - 1;
    for (k = 0; k <= nd2; k++) {
      costab1q->data[k + 1] = cos(nt_im * ((double)k + 1.0));
    }

    b_y = nd2 + 2;
    nd2 = rt - 1;
    for (k = b_y; k <= nd2; k++) {
      costab1q->data[k] = sin(nt_im * (double)(rt - k));
    }

    costab1q->data[rt] = 0.0;
    if (!useRadix2) {
      rt = costab1q->size[1] - 1;
      nd2 = (costab1q->size[1] - 1) << 1;
      b_y = costab->size[0] * costab->size[1];
      costab->size[0] = 1;
      costab->size[1] = nd2 + 1;
      emxEnsureCapacity_real_T(costab, b_y);
      b_y = sintab->size[0] * sintab->size[1];
      sintab->size[0] = 1;
      sintab->size[1] = nd2 + 1;
      emxEnsureCapacity_real_T(sintab, b_y);
      costab->data[0] = 1.0;
      sintab->data[0] = 0.0;
      b_y = sintabinv->size[0] * sintabinv->size[1];
      sintabinv->size[0] = 1;
      sintabinv->size[1] = nd2 + 1;
      emxEnsureCapacity_real_T(sintabinv, b_y);
      for (k = 0; k < rt; k++) {
        sintabinv->data[k + 1] = costab1q->data[(rt - k) - 1];
      }

      b_y = costab1q->size[1];
      for (k = b_y; k <= nd2; k++) {
        sintabinv->data[k] = costab1q->data[k - rt];
      }

      for (k = 0; k < rt; k++) {
        costab->data[k + 1] = costab1q->data[k + 1];
        sintab->data[k + 1] = -costab1q->data[(rt - k) - 1];
      }

      b_y = costab1q->size[1];
      for (k = b_y; k <= nd2; k++) {
        costab->data[k] = -costab1q->data[nd2 - k];
        sintab->data[k] = -costab1q->data[k - rt];
      }
    } else {
      rt = costab1q->size[1] - 1;
      nd2 = (costab1q->size[1] - 1) << 1;
      b_y = costab->size[0] * costab->size[1];
      costab->size[0] = 1;
      costab->size[1] = nd2 + 1;
      emxEnsureCapacity_real_T(costab, b_y);
      b_y = sintab->size[0] * sintab->size[1];
      sintab->size[0] = 1;
      sintab->size[1] = nd2 + 1;
      emxEnsureCapacity_real_T(sintab, b_y);
      costab->data[0] = 1.0;
      sintab->data[0] = 0.0;
      for (k = 0; k < rt; k++) {
        costab->data[k + 1] = costab1q->data[k + 1];
        sintab->data[k + 1] = costab1q->data[(rt - k) - 1];
      }

      b_y = costab1q->size[1];
      for (k = b_y; k <= nd2; k++) {
        costab->data[k] = -costab1q->data[nd2 - k];
        sintab->data[k] = costab1q->data[k - rt];
      }

      sintabinv->size[0] = 1;
      sintabinv->size[1] = 0;
    }

    if (useRadix2) {
      r2br_r2dit_trig_impl(x, 0, n1_tmp, costab, sintab, y);
      if (y->size[0] > 1) {
        nt_im = 1.0 / (double)y->size[0];
        nd2 = y->size[0];
        for (b_y = 0; b_y < nd2; b_y++) {
          y->data[b_y].re *= nt_im;
          y->data[b_y].im *= nt_im;
        }
      }
    } else {
      nInt2m1 = (n1_tmp + n1_tmp) - 1;
      b_y = wwc->size[0];
      wwc->size[0] = nInt2m1;
      emxEnsureCapacity_creal_T(wwc, b_y);
      idx = n1_tmp;
      rt = 0;
      wwc->data[useRadix2_tmp].re = 1.0;
      wwc->data[useRadix2_tmp].im = 0.0;
      nd2 = n1_tmp << 1;
      for (k = 0; k <= n1_tmp - 2; k++) {
        b_y = ((k + 1) << 1) - 1;
        if (nd2 - rt <= b_y) {
          rt += b_y - nd2;
        } else {
          rt += b_y;
        }

        nt_im = 3.1415926535897931 * (double)rt / (double)n1_tmp;
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
      b_y = nInt2m1 - 1;
      for (k = b_y; k >= n1_tmp; k--) {
        wwc->data[k] = wwc->data[idx];
        idx++;
      }

      rt = x->size[0];
      if (n1_tmp < rt) {
        rt = n1_tmp;
      }

      b_y = y->size[0];
      y->size[0] = n1_tmp;
      emxEnsureCapacity_creal_T(y, b_y);
      if (n1_tmp > x->size[0]) {
        b_y = y->size[0];
        y->size[0] = n1_tmp;
        emxEnsureCapacity_creal_T(y, b_y);
        for (b_y = 0; b_y < n1_tmp; b_y++) {
          y->data[b_y].re = 0.0;
          y->data[b_y].im = 0.0;
        }
      }

      nd2 = 0;
      for (k = 0; k < rt; k++) {
        b_y = (n1_tmp + k) - 1;
        y->data[k].re = wwc->data[b_y].re * x->data[nd2].re + wwc->data[b_y].im *
          x->data[nd2].im;
        y->data[k].im = wwc->data[b_y].re * x->data[nd2].im - wwc->data[b_y].im *
          x->data[nd2].re;
        nd2++;
      }

      b_y = rt + 1;
      for (k = b_y; k <= n1_tmp; k++) {
        y->data[k - 1].re = 0.0;
        y->data[k - 1].im = 0.0;
      }

      r2br_r2dit_trig_impl(y, 0, N2blue, costab, sintab, fy);
      r2br_r2dit_trig_impl(wwc, 0, N2blue, costab, sintab, fv);
      nd2 = fy->size[0];
      for (b_y = 0; b_y < nd2; b_y++) {
        nt_im = fy->data[b_y].re * fv->data[b_y].im + fy->data[b_y].im *
          fv->data[b_y].re;
        fy->data[b_y].re = fy->data[b_y].re * fv->data[b_y].re - fy->data[b_y].
          im * fv->data[b_y].im;
        fy->data[b_y].im = nt_im;
      }

      r2br_r2dit_trig_impl(fy, 0, N2blue, costab, sintabinv, fv);
      if (fv->size[0] > 1) {
        nt_im = 1.0 / (double)fv->size[0];
        nd2 = fv->size[0];
        for (b_y = 0; b_y < nd2; b_y++) {
          fv->data[b_y].re *= nt_im;
          fv->data[b_y].im *= nt_im;
        }
      }

      idx = 0;
      nt_re = (int)varargin_1;
      b_y = wwc->size[0];
      for (k = n1_tmp; k <= b_y; k++) {
        nt_im = wwc->data[k - 1].re * fv->data[k - 1].re + wwc->data[k - 1].im *
          fv->data[k - 1].im;
        y_tmp_im = wwc->data[k - 1].re * fv->data[k - 1].im - wwc->data[k - 1].
          im * fv->data[k - 1].re;
        y->data[idx].re = nt_im;
        y->data[idx].im = y_tmp_im;
        y->data[idx].re = nt_im;
        y->data[idx].im = y_tmp_im;
        if (y->data[idx].im == 0.0) {
          y_tmp_im = y->data[idx].re / nt_re;
          nt_im = 0.0;
        } else if (y->data[idx].re == 0.0) {
          y_tmp_im = 0.0;
          nt_im = y->data[idx].im / nt_re;
        } else {
          y_tmp_im = y->data[idx].re / nt_re;
          nt_im = y->data[idx].im / nt_re;
        }

        y->data[idx].re = y_tmp_im;
        y->data[idx].im = nt_im;
        idx++;
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
 * File trailer for ifft.c
 *
 * [EOF]
 */
