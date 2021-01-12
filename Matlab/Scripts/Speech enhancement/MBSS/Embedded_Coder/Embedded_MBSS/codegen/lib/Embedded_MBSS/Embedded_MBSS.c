/*
 * File: Embedded_MBSS.c
 *
 * MATLAB Coder version            : 4.3
 * C/C++ source code generated on  : 14-Oct-2020 13:35:35
 */

/* Include Files */
#include "Embedded_MBSS.h"
#include "Embedded_MBSS_data.h"
#include "Embedded_MBSS_emxutil.h"
#include "Embedded_MBSS_initialize.h"
#include "fft.h"
#include "ifft.h"
#include "log2.h"
#include "rt_defines.h"
#include "rt_nonfinite.h"
#include <math.h>

/* Variable Definitions */
static bool A_Pos_SNR_init_not_empty;
static emxArray_real_T *prev_noise_mag;

/* Function Declarations */
static double rt_atan2d_snf(double u0, double u1);
static double rt_hypotd_snf(double u0, double u1);

/* Function Definitions */

/*
 * Arguments    : double u0
 *                double u1
 * Return Type  : double
 */
static double rt_atan2d_snf(double u0, double u1)
{
  double y;
  int b_u0;
  int b_u1;
  if (rtIsNaN(u0) || rtIsNaN(u1)) {
    y = rtNaN;
  } else if (rtIsInf(u0) && rtIsInf(u1)) {
    if (u0 > 0.0) {
      b_u0 = 1;
    } else {
      b_u0 = -1;
    }

    if (u1 > 0.0) {
      b_u1 = 1;
    } else {
      b_u1 = -1;
    }

    y = atan2(b_u0, b_u1);
  } else if (u1 == 0.0) {
    if (u0 > 0.0) {
      y = RT_PI / 2.0;
    } else if (u0 < 0.0) {
      y = -(RT_PI / 2.0);
    } else {
      y = 0.0;
    }
  } else {
    y = atan2(u0, u1);
  }

  return y;
}

/*
 * Arguments    : double u0
 *                double u1
 * Return Type  : double
 */
static double rt_hypotd_snf(double u0, double u1)
{
  double y;
  double a;
  a = fabs(u0);
  y = fabs(u1);
  if (a < y) {
    a /= y;
    y *= sqrt(a * a + 1.0);
  } else if (a > y) {
    y /= a;
    y = a * sqrt(y * y + 1.0);
  } else {
    if (!rtIsNaN(y)) {
      y = a * 1.4142135623730951;
    }
  }

  return y;
}

/*
 * Arguments    : void
 * Return Type  : void
 */
void A_Pos_SNR_init_not_empty_init(void)
{
  A_Pos_SNR_init_not_empty = false;
}

/*
 * Arguments    : void
 * Return Type  : void
 */
void A_Posteriori_SNR_free(void)
{
  emxFree_real_T(&prev_noise_mag);
}

/*
 * Arguments    : void
 * Return Type  : void
 */
void A_Posteriori_SNR_init(void)
{
  emxInit_real_T(&prev_noise_mag, 1);
}

/*
 * Arguments    : emxArray_real_T *Input
 *                double SF
 *                emxArray_real_T *Output
 * Return Type  : void
 */
void Embedded_MBSS(emxArray_real_T *Input, double SF, emxArray_real_T *Output)
{
  float window_len;
  int i;
  int loop_ub;
  emxArray_real_T *frame;
  emxArray_real_T *Noisy_Mag_Spectrum;
  emxArray_real_T *Phase;
  emxArray_creal_T *b_frame;
  emxArray_real_T *noise_mag;
  emxArray_creal_T *x;
  emxArray_real_T *b_x;
  emxArray_int32_T *r;
  emxArray_creal_T *c_frame;
  int frame_nu;
  float b_frame_nu;
  float f;
  int i1;
  int i2;
  float c_x;
  double d;
  int k;
  int nx;
  double Band_size;
  int i3;
  int b_loop_ub;
  double tmp;
  double y;
  int x_tmp;
  int vstride;
  int i4;
  double d1;
  if (isInitialized_Embedded_MBSS == false) {
    Embedded_MBSS_initialize();
  }

  /* Window duration (Seconds) */
  window_len = (float)(0.025 * SF);

  /* Window length (Samples) */
  Input->data[(int)(ceilf((float)Input->size[0] / window_len) * window_len) - 1]
    = 0.0;

  /* Make total multiple of frame length */
  /* Main() */
  i = Output->size[0];
  Output->size[0] = Input->size[0];
  emxEnsureCapacity_real_T(Output, i);
  loop_ub = Input->size[0];
  for (i = 0; i < loop_ub; i++) {
    Output->data[i] = 0.0;
  }

  /* Number of bands */
  i = (int)(((float)Input->size[0] + (window_len - 1.0F)) / window_len);
  emxInit_real_T(&frame, 1);
  emxInit_real_T(&Noisy_Mag_Spectrum, 1);
  emxInit_real_T(&Phase, 1);
  emxInit_creal_T(&b_frame, 1);
  emxInit_real_T(&noise_mag, 1);
  emxInit_creal_T(&x, 1);
  emxInit_real_T(&b_x, 1);
  emxInit_int32_T(&r, 2);
  emxInit_creal_T(&c_frame, 1);
  for (frame_nu = 0; frame_nu < i; frame_nu++) {
    b_frame_nu = (float)frame_nu * window_len + 1.0F;

    /* Main loop */
    f = (b_frame_nu + window_len) - 1.0F;
    if (b_frame_nu > f) {
      i1 = 0;
      i2 = 0;
    } else {
      i1 = (int)b_frame_nu - 1;
      i2 = (int)f;
    }

    loop_ub = i2 - i1;
    i2 = frame->size[0];
    frame->size[0] = loop_ub;
    emxEnsureCapacity_real_T(frame, i2);
    for (i2 = 0; i2 < loop_ub; i2++) {
      frame->data[i2] = Input->data[i1 + i2];
    }

    /* Extract processing frame */
    c_x = b_log2(window_len);
    frame->data[(int)powf(2.0F, ceilf(c_x)) - 1] = 0.0;

    /* Zero pad */
    c_x = b_log2(window_len);
    fft(frame, powf(2.0F, ceilf(c_x)), b_frame);

    /* FFT */
    d = (double)b_frame->size[0] / 2.0;
    if (1.0 > d) {
      loop_ub = 0;
    } else {
      loop_ub = (int)d;
    }

    i1 = x->size[0];
    x->size[0] = loop_ub;
    emxEnsureCapacity_creal_T(x, i1);
    for (i1 = 0; i1 < loop_ub; i1++) {
      x->data[i1] = b_frame->data[i1];
    }

    i1 = loop_ub - 1;
    i2 = Noisy_Mag_Spectrum->size[0];
    Noisy_Mag_Spectrum->size[0] = loop_ub;
    emxEnsureCapacity_real_T(Noisy_Mag_Spectrum, i2);
    for (k = 0; k <= i1; k++) {
      Noisy_Mag_Spectrum->data[k] = rt_hypotd_snf(x->data[k].re, x->data[k].im);
    }

    /* One Sided Magnitude Spectrum */
    Noisy_Mag_Spectrum->data[0] = 0.0009765625;

    /* Remove DC */
    i1 = frame->size[0];
    frame->size[0] = b_frame->size[0];
    emxEnsureCapacity_real_T(frame, i1);
    loop_ub = b_frame->size[0];
    i1 = b_x->size[0];
    b_x->size[0] = b_frame->size[0];
    emxEnsureCapacity_real_T(b_x, i1);
    for (i1 = 0; i1 < loop_ub; i1++) {
      frame->data[i1] = b_frame->data[i1].im;
      b_x->data[i1] = b_frame->data[i1].re;
    }

    if (frame->size[0] <= b_x->size[0]) {
      i1 = frame->size[0];
    } else {
      i1 = b_x->size[0];
    }

    i2 = Phase->size[0];
    Phase->size[0] = i1;
    emxEnsureCapacity_real_T(Phase, i2);
    for (k = 0; k < i1; k++) {
      Phase->data[k] = rt_atan2d_snf(frame->data[k], b_x->data[k]);
    }

    /* Extract single sided manitude spectrum and phase  */
    if (!A_Pos_SNR_init_not_empty) {
      i1 = prev_noise_mag->size[0];
      prev_noise_mag->size[0] = Noisy_Mag_Spectrum->size[0];
      emxEnsureCapacity_real_T(prev_noise_mag, i1);
      loop_ub = Noisy_Mag_Spectrum->size[0];
      for (i1 = 0; i1 < loop_ub; i1++) {
        prev_noise_mag->data[i1] = Noisy_Mag_Spectrum->data[i1];
      }

      A_Pos_SNR_init_not_empty = true;
    }

    i1 = frame->size[0];
    frame->size[0] = prev_noise_mag->size[0];
    emxEnsureCapacity_real_T(frame, i1);
    loop_ub = prev_noise_mag->size[0];
    for (i1 = 0; i1 < loop_ub; i1++) {
      frame->data[i1] = 0.9 * prev_noise_mag->data[i1];
    }

    loop_ub = frame->size[0];
    for (i1 = 0; i1 < loop_ub; i1++) {
      frame->data[i1] += 0.099999999999999978 * Noisy_Mag_Spectrum->data[i1];
    }

    i1 = noise_mag->size[0];
    noise_mag->size[0] = prev_noise_mag->size[0];
    emxEnsureCapacity_real_T(noise_mag, i1);
    loop_ub = prev_noise_mag->size[0];
    for (i1 = 0; i1 < loop_ub; i1++) {
      noise_mag->data[i1] = prev_noise_mag->data[i1];
    }

    i1 = Noisy_Mag_Spectrum->size[0];
    for (nx = 0; nx < i1; nx++) {
      d = prev_noise_mag->data[nx];
      if ((d < 1.2 * frame->data[nx]) && (d > 0.85 * frame->data[nx])) {
        noise_mag->data[nx] = frame->data[nx];
      }
    }

    i1 = prev_noise_mag->size[0];
    prev_noise_mag->size[0] = noise_mag->size[0];
    emxEnsureCapacity_real_T(prev_noise_mag, i1);
    loop_ub = noise_mag->size[0];
    for (i1 = 0; i1 < loop_ub; i1++) {
      prev_noise_mag->data[i1] = noise_mag->data[i1];
    }

    /* Estimate Noise power Spectrum & A Posteriori SNR */
    loop_ub = Noisy_Mag_Spectrum->size[0];
    for (i1 = 0; i1 < loop_ub; i1++) {
      Noisy_Mag_Spectrum->data[i1] *= Noisy_Mag_Spectrum->data[i1];
    }

    loop_ub = noise_mag->size[0];
    for (i1 = 0; i1 < loop_ub; i1++) {
      noise_mag->data[i1] *= noise_mag->data[i1];
    }

    i1 = frame->size[0];
    frame->size[0] = Noisy_Mag_Spectrum->size[0];
    emxEnsureCapacity_real_T(frame, i1);
    loop_ub = Noisy_Mag_Spectrum->size[0];
    for (i1 = 0; i1 < loop_ub; i1++) {
      frame->data[i1] = 0.0;
    }

    Band_size = (double)Noisy_Mag_Spectrum->size[0] / 4.0;
    if (1.0 > Band_size) {
      i3 = -1;
      b_loop_ub = -1;
      i1 = -1;
      i2 = -1;
    } else {
      i3 = -1;
      b_loop_ub = (int)Band_size - 1;
      i1 = -1;
      i2 = b_loop_ub;
    }

    nx = i2 - -1;
    if (nx == 0) {
      tmp = 0.0;
    } else {
      tmp = Noisy_Mag_Spectrum->data[0];
      for (k = 2; k <= nx; k++) {
        tmp += Noisy_Mag_Spectrum->data[-1 + k];
      }
    }

    nx = b_loop_ub - -1;
    if (nx == 0) {
      y = 0.0;
    } else {
      y = noise_mag->data[0];
      for (k = 2; k <= nx; k++) {
        y += noise_mag->data[-1 + k];
      }
    }

    tmp = 10.0 * log10(tmp / y);
    y = SF / 2.0 * (double)Noisy_Mag_Spectrum->size[0] * Band_size;
    if (1.0 > Band_size) {
      x_tmp = 0;
      loop_ub = 0;
      vstride = 1;
    } else {
      x_tmp = 0;
      loop_ub = (int)Band_size;
      vstride = 1;
    }

    if (tmp < -5.0) {
      tmp = 4.75;
    } else if (tmp > 20.0) {
      tmp = 1.0;
    } else {
      tmp = 4.0 - 0.15 * tmp;
    }

    if (y < 1000.0) {
      y = 1.0;
    } else if (y > SF / 2.0 - 2000.0) {
      y = 1.5;
    } else {
      y = 2.5;
    }

    tmp *= y;
    if (1.0 > Band_size) {
      i4 = 0;
      b_loop_ub = 0;
    } else {
      i4 = 0;
      b_loop_ub = (int)Band_size;
    }

    i2 = b_x->size[0];
    b_x->size[0] = loop_ub;
    emxEnsureCapacity_real_T(b_x, i2);
    for (i2 = 0; i2 < loop_ub; i2++) {
      b_x->data[i2] = Noisy_Mag_Spectrum->data[i2] - tmp * noise_mag->data[i2];
    }

    nx = b_x->size[0];
    for (k = 0; k < nx; k++) {
      b_x->data[k] = sqrt(b_x->data[k]);
    }

    i2 = r->size[0] * r->size[1];
    r->size[0] = 1;
    r->size[1] = b_loop_ub;
    emxEnsureCapacity_int32_T(r, i2);
    for (i2 = 0; i2 < b_loop_ub; i2++) {
      r->data[i2] = i2;
    }

    loop_ub = r->size[0] * r->size[1];
    for (i2 = 0; i2 < loop_ub; i2++) {
      frame->data[r->data[i2]] = b_x->data[i2];
    }

    d = 2.0 * Band_size;
    if (Band_size + 1.0 > d) {
      b_loop_ub = -1;
      i2 = -1;
    } else {
      i3 = (int)(Band_size + 1.0) - 2;
      b_loop_ub = (int)d - 1;
      i1 = i3;
      i2 = b_loop_ub;
    }

    nx = i2 - i1;
    if (nx == 0) {
      tmp = 0.0;
    } else {
      tmp = Noisy_Mag_Spectrum->data[i1 + 1];
      for (k = 2; k <= nx; k++) {
        tmp += Noisy_Mag_Spectrum->data[i1 + k];
      }
    }

    nx = b_loop_ub - i3;
    if (nx == 0) {
      y = 0.0;
    } else {
      y = noise_mag->data[i3 + 1];
      for (k = 2; k <= nx; k++) {
        y += noise_mag->data[i3 + k];
      }
    }

    tmp = 10.0 * log10(tmp / y);
    y = SF / 2.0 * (double)Noisy_Mag_Spectrum->size[0] * Band_size * 2.0;
    if (Band_size + 1.0 > d) {
      loop_ub = 0;
    } else {
      x_tmp = (int)(Band_size + 1.0) - 1;
      loop_ub = (int)d;
    }

    if (!(Band_size + 1.0 > 2.0 * Band_size)) {
      vstride = (int)(Band_size + 1.0);
    }

    if (tmp < -5.0) {
      tmp = 4.75;
    } else if (tmp > 20.0) {
      tmp = 1.0;
    } else {
      tmp = 4.0 - 0.15 * tmp;
    }

    if (y < 1000.0) {
      y = 1.0;
    } else if (y > SF / 2.0 - 2000.0) {
      y = 1.5;
    } else {
      y = 2.5;
    }

    tmp *= y;
    if (Band_size + 1.0 > d) {
      b_loop_ub = 0;
    } else {
      i4 = (int)(Band_size + 1.0) - 1;
      b_loop_ub = (int)d;
    }

    loop_ub -= x_tmp;
    i1 = b_x->size[0];
    b_x->size[0] = loop_ub;
    emxEnsureCapacity_real_T(b_x, i1);
    for (i2 = 0; i2 < loop_ub; i2++) {
      b_x->data[i2] = Noisy_Mag_Spectrum->data[x_tmp + i2] - tmp *
        noise_mag->data[(vstride + i2) - 1];
    }

    nx = b_x->size[0];
    for (k = 0; k < nx; k++) {
      b_x->data[k] = sqrt(b_x->data[k]);
    }

    i1 = r->size[0] * r->size[1];
    r->size[0] = 1;
    loop_ub = b_loop_ub - i4;
    r->size[1] = loop_ub;
    emxEnsureCapacity_int32_T(r, i1);
    for (i2 = 0; i2 < loop_ub; i2++) {
      r->data[i2] = i4 + i2;
    }

    loop_ub = r->size[0] * r->size[1];
    for (i2 = 0; i2 < loop_ub; i2++) {
      frame->data[r->data[i2]] = b_x->data[i2];
    }

    d = 2.0 * Band_size + 1.0;
    d1 = 3.0 * Band_size;
    if (d > d1) {
      i3 = -1;
      b_loop_ub = -1;
      i1 = -1;
      i2 = -1;
    } else {
      i3 = (int)d - 2;
      b_loop_ub = (int)d1 - 1;
      i1 = i3;
      i2 = b_loop_ub;
    }

    nx = i2 - i1;
    if (nx == 0) {
      tmp = 0.0;
    } else {
      tmp = Noisy_Mag_Spectrum->data[i1 + 1];
      for (k = 2; k <= nx; k++) {
        tmp += Noisy_Mag_Spectrum->data[i1 + k];
      }
    }

    nx = b_loop_ub - i3;
    if (nx == 0) {
      y = 0.0;
    } else {
      y = noise_mag->data[i3 + 1];
      for (k = 2; k <= nx; k++) {
        y += noise_mag->data[i3 + k];
      }
    }

    tmp = 10.0 * log10(tmp / y);
    y = SF / 2.0 * (double)Noisy_Mag_Spectrum->size[0] * Band_size * 3.0;
    if (d > d1) {
      x_tmp = 0;
      loop_ub = 0;
    } else {
      x_tmp = (int)d - 1;
      loop_ub = (int)d1;
    }

    if (d > 3.0 * Band_size) {
      vstride = 1;
    } else {
      vstride = (int)d;
    }

    if (tmp < -5.0) {
      tmp = 4.75;
    } else if (tmp > 20.0) {
      tmp = 1.0;
    } else {
      tmp = 4.0 - 0.15 * tmp;
    }

    if (y < 1000.0) {
      y = 1.0;
    } else if (y > SF / 2.0 - 2000.0) {
      y = 1.5;
    } else {
      y = 2.5;
    }

    tmp *= y;
    if (d > d1) {
      i4 = 0;
      b_loop_ub = 0;
    } else {
      i4 = (int)d - 1;
      b_loop_ub = (int)d1;
    }

    loop_ub -= x_tmp;
    i1 = b_x->size[0];
    b_x->size[0] = loop_ub;
    emxEnsureCapacity_real_T(b_x, i1);
    for (i2 = 0; i2 < loop_ub; i2++) {
      b_x->data[i2] = Noisy_Mag_Spectrum->data[x_tmp + i2] - tmp *
        noise_mag->data[(vstride + i2) - 1];
    }

    nx = b_x->size[0];
    for (k = 0; k < nx; k++) {
      b_x->data[k] = sqrt(b_x->data[k]);
    }

    i1 = r->size[0] * r->size[1];
    r->size[0] = 1;
    loop_ub = b_loop_ub - i4;
    r->size[1] = loop_ub;
    emxEnsureCapacity_int32_T(r, i1);
    for (i2 = 0; i2 < loop_ub; i2++) {
      r->data[i2] = i4 + i2;
    }

    loop_ub = r->size[0] * r->size[1];
    for (i2 = 0; i2 < loop_ub; i2++) {
      frame->data[r->data[i2]] = b_x->data[i2];
    }

    d = 3.0 * Band_size + 1.0;
    d1 = 4.0 * Band_size;
    if (d > d1) {
      i3 = -1;
      b_loop_ub = -1;
      i1 = -1;
      i2 = -1;
    } else {
      i3 = (int)d - 2;
      b_loop_ub = (int)d1 - 1;
      i1 = i3;
      i2 = b_loop_ub;
    }

    nx = i2 - i1;
    if (nx == 0) {
      tmp = 0.0;
    } else {
      tmp = Noisy_Mag_Spectrum->data[i1 + 1];
      for (k = 2; k <= nx; k++) {
        tmp += Noisy_Mag_Spectrum->data[i1 + k];
      }
    }

    nx = b_loop_ub - i3;
    if (nx == 0) {
      y = 0.0;
    } else {
      y = noise_mag->data[i3 + 1];
      for (k = 2; k <= nx; k++) {
        y += noise_mag->data[i3 + k];
      }
    }

    tmp = 10.0 * log10(tmp / y);
    y = SF / 2.0 * (double)Noisy_Mag_Spectrum->size[0] * Band_size * 4.0;
    if (d > d1) {
      x_tmp = 0;
      loop_ub = 0;
    } else {
      x_tmp = (int)d - 1;
      loop_ub = (int)d1;
    }

    if (d > 4.0 * Band_size) {
      vstride = 1;
    } else {
      vstride = (int)d;
    }

    if (tmp < -5.0) {
      tmp = 4.75;
    } else if (tmp > 20.0) {
      tmp = 1.0;
    } else {
      tmp = 4.0 - 0.15 * tmp;
    }

    if (y < 1000.0) {
      y = 1.0;
    } else if (y > SF / 2.0 - 2000.0) {
      y = 1.5;
    } else {
      y = 2.5;
    }

    tmp *= y;
    if (d > d1) {
      i4 = 0;
      b_loop_ub = 0;
    } else {
      i4 = (int)d - 1;
      b_loop_ub = (int)d1;
    }

    loop_ub -= x_tmp;
    i1 = b_x->size[0];
    b_x->size[0] = loop_ub;
    emxEnsureCapacity_real_T(b_x, i1);
    for (i2 = 0; i2 < loop_ub; i2++) {
      b_x->data[i2] = Noisy_Mag_Spectrum->data[x_tmp + i2] - tmp *
        noise_mag->data[(vstride + i2) - 1];
    }

    nx = b_x->size[0];
    for (k = 0; k < nx; k++) {
      b_x->data[k] = sqrt(b_x->data[k]);
    }

    i1 = r->size[0] * r->size[1];
    r->size[0] = 1;
    loop_ub = b_loop_ub - i4;
    r->size[1] = loop_ub;
    emxEnsureCapacity_int32_T(r, i1);
    for (i2 = 0; i2 < loop_ub; i2++) {
      r->data[i2] = i4 + i2;
    }

    loop_ub = r->size[0] * r->size[1];
    for (i2 = 0; i2 < loop_ub; i2++) {
      frame->data[r->data[i2]] = b_x->data[i2];
    }

    /* Enhance */
    c_x = b_log2(window_len);
    if (2 > frame->size[0]) {
      i1 = -1;
      i2 = -1;
    } else {
      i1 = 0;
      i2 = frame->size[0] - 1;
    }

    loop_ub = i2 - i1;
    i2 = b_x->size[0];
    b_x->size[0] = loop_ub;
    emxEnsureCapacity_real_T(b_x, i2);
    for (i2 = 0; i2 < loop_ub; i2++) {
      b_x->data[i2] = frame->data[(i1 + i2) + 1];
    }

    nx = 2;
    if (loop_ub != 1) {
      nx = 1;
    }

    if (loop_ub != 0) {
      if (nx <= 1) {
        i1 = loop_ub;
      } else {
        i1 = 1;
      }

      if (i1 > 1) {
        vstride = 1;
        for (k = 0; k <= nx - 2; k++) {
          vstride *= loop_ub;
        }

        if (nx <= 1) {
          i1 = loop_ub - 1;
        } else {
          i1 = 0;
        }

        nx = (i1 + 1) >> 1;
        i2 = vstride - 1;
        for (b_loop_ub = 0; b_loop_ub <= i2; b_loop_ub++) {
          for (k = 0; k < nx; k++) {
            loop_ub = b_loop_ub + k * vstride;
            tmp = b_x->data[loop_ub];
            x_tmp = b_loop_ub + (i1 - k) * vstride;
            b_x->data[loop_ub] = b_x->data[x_tmp];
            b_x->data[x_tmp] = tmp;
          }
        }
      }
    }

    /* Convert to double sided spectrum */
    loop_ub = Phase->size[0];
    i1 = x->size[0];
    x->size[0] = Phase->size[0];
    emxEnsureCapacity_creal_T(x, i1);
    for (i1 = 0; i1 < loop_ub; i1++) {
      x->data[i1].re = Phase->data[i1] * 0.0;
      x->data[i1].im = Phase->data[i1];
    }

    nx = x->size[0];
    for (k = 0; k < nx; k++) {
      if (x->data[k].im == 0.0) {
        x->data[k].re = exp(x->data[k].re);
        x->data[k].im = 0.0;
      } else if (rtIsInf(x->data[k].im) && rtIsInf(x->data[k].re) && (x->data[k]
                  .re < 0.0)) {
        x->data[k].re = 0.0;
        x->data[k].im = 0.0;
      } else {
        tmp = exp(x->data[k].re / 2.0);
        x->data[k].re = tmp * (tmp * cos(x->data[k].im));
        x->data[k].im = tmp * (tmp * sin(x->data[k].im));
      }
    }

    /* Mag&Phase to complex */
    i1 = frame->size[0];
    i2 = c_frame->size[0];
    c_frame->size[0] = (frame->size[0] + b_x->size[0]) + 1;
    emxEnsureCapacity_creal_T(c_frame, i2);
    loop_ub = frame->size[0];
    for (i2 = 0; i2 < loop_ub; i2++) {
      c_frame->data[i2].re = frame->data[i2] * x->data[i2].re;
      c_frame->data[i2].im = frame->data[i2] * x->data[i2].im;
    }

    for (i2 = 0; i2 < 1; i2++) {
      c_frame->data[frame->size[0]].re = frame->data[0] * x->data[i1].re;
      c_frame->data[frame->size[0]].im = frame->data[0] * x->data[i1].im;
    }

    loop_ub = b_x->size[0];
    for (i2 = 0; i2 < loop_ub; i2++) {
      c_frame->data[(((i2 + frame->size[0]) + frame->size[0]) - i1) + 1].re =
        b_x->data[i2] * x->data[(frame->size[0] + i2) + 1].re;
      c_frame->data[(((i2 + frame->size[0]) + frame->size[0]) - i1) + 1].im =
        b_x->data[i2] * x->data[(frame->size[0] + i2) + 1].im;
    }

    ifft(c_frame, powf(2.0F, ceilf(c_x)), b_frame);

    /* Convert to double sided spectrum and ifft */
    if (b_frame_nu > f) {
      i1 = 0;
      i2 = 0;
    } else {
      i1 = (int)b_frame_nu - 1;
      i2 = (int)f;
    }

    x_tmp = r->size[0] * r->size[1];
    r->size[0] = 1;
    loop_ub = i2 - i1;
    r->size[1] = loop_ub;
    emxEnsureCapacity_int32_T(r, x_tmp);
    for (i2 = 0; i2 < loop_ub; i2++) {
      r->data[i2] = i1 + i2;
    }

    loop_ub = r->size[0] * r->size[1];
    for (i1 = 0; i1 < loop_ub; i1++) {
      Output->data[r->data[i1]] = b_frame->data[i1].re;
    }
  }

  emxFree_creal_T(&c_frame);
  emxFree_int32_T(&r);
  emxFree_real_T(&b_x);
  emxFree_creal_T(&x);
  emxFree_real_T(&noise_mag);
  emxFree_creal_T(&b_frame);
  emxFree_real_T(&Phase);
  emxFree_real_T(&Noisy_Mag_Spectrum);
  emxFree_real_T(&frame);
}

/*
 * File trailer for Embedded_MBSS.c
 *
 * [EOF]
 */
