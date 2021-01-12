/*
 * File: Embedded_MBSS.c
 *
 * MATLAB Coder version            : 4.3
 * C/C++ source code generated on  : 14-Oct-2020 16:14:36
 */

/* Include Files */
#include "Embedded_MBSS.h"
#include "Embedded_MBSS_data.h"
#include "Embedded_MBSS_emxutil.h"
#include "Embedded_MBSS_initialize.h"
#include "fft.h"
#include "log2.h"
#include "rt_nonfinite.h"
#include <math.h>
#include <stdio.h>

/* Variable Definitions */
static boolean_T A_Pos_SNR_init_not_empty;
static emxArray_real_T *prev_noise_mag;

/* Function Definitions */

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
  emxInit_real_T(&prev_noise_mag, 2);
}

/*
 * Arguments    : double SF
 * Return Type  : void
 */
void Embedded_MBSS(double SF)
{
  float window_len;
  int i;
  emxArray_real_T *Enhanced_Magnitude_Spectrum;
  emxArray_creal_T *tmp;
  emxArray_real_T *Noisy_Mag_Spectrum;
  emxArray_real_T *Phase;
  emxArray_real_T *delta_tmp;
  emxArray_real_T *noise_mag;
  emxArray_real_T *x;
  emxArray_creal_T *r;
  emxArray_real_T *b_Enhanced_Magnitude_Spectrum;
  int frame_nu;
  float b_frame_nu;
  float f;
  float b_x;
  int i1;
  double d;
  int i2;
  int tmp_tmp;
  int x_tmp;
  int k;
  int loop_ub;
  int nx;
  double d1;
  double Band_size;
  int i3;
  double b_tmp;
  double y;
  int vstride;
  creal_T c_Enhanced_Magnitude_Spectrum;
  if (isInitialized_Embedded_MBSS == false) {
    Embedded_MBSS_initialize();
  }

  printf("Done!");
  fflush(stdout);

  /* Window duration (Seconds) */
  window_len = (float)(0.025 * SF);

  /* Window length (Samples) */
  /* Make total multiple of frame length */
  /* Main() */
  /* Number of bands */
  i = (int)((window_len - 1.0F) / window_len);
  emxInit_real_T(&Enhanced_Magnitude_Spectrum, 1);
  emxInit_creal_T(&tmp, 2);
  emxInit_real_T(&Noisy_Mag_Spectrum, 2);
  emxInit_real_T(&Phase, 2);
  emxInit_real_T(&delta_tmp, 2);
  emxInit_real_T(&noise_mag, 2);
  emxInit_real_T(&x, 1);
  emxInit_creal_T(&r, 1);
  emxInit_real_T(&b_Enhanced_Magnitude_Spectrum, 1);
  for (frame_nu = 0; frame_nu < i; frame_nu++) {
    b_frame_nu = (float)frame_nu * window_len + 1.0F;

    /* Main loop */
    f = (b_frame_nu + window_len) - 1.0F;
    if (!(b_frame_nu > f)) {
      abort();
    }

    /* Extract processing frame */
    b_log2(window_len);

    /* Zero pad */
    b_x = b_log2(window_len);

    /* FFT */
    i1 = (int)powf(2.0F, ceilf(b_x));
    d = (double)i1 / 2.0;
    if (1.0 > d) {
      i2 = 0;
    } else {
      i2 = (int)d;
    }

    tmp_tmp = i2 - 1;
    x_tmp = Noisy_Mag_Spectrum->size[0] * Noisy_Mag_Spectrum->size[1];
    Noisy_Mag_Spectrum->size[0] = 1;
    Noisy_Mag_Spectrum->size[1] = i2;
    emxEnsureCapacity_real_T(Noisy_Mag_Spectrum, x_tmp);
    for (k = 0; k <= tmp_tmp; k++) {
      Noisy_Mag_Spectrum->data[k] = 0.0;
    }

    /* One Sided Magnitude Spectrum */
    Noisy_Mag_Spectrum->data[0] = 0.0009765625;

    /* Remove DC */
    i2 = Phase->size[0] * Phase->size[1];
    Phase->size[0] = 1;
    Phase->size[1] = i1;
    emxEnsureCapacity_real_T(Phase, i2);
    for (k = 0; k < i1; k++) {
      Phase->data[k] = 0.0;
    }

    /* Extract single sided magnitude spectrum and phase  */
    if (!A_Pos_SNR_init_not_empty) {
      i1 = prev_noise_mag->size[0] * prev_noise_mag->size[1];
      prev_noise_mag->size[0] = 1;
      prev_noise_mag->size[1] = Noisy_Mag_Spectrum->size[1];
      emxEnsureCapacity_real_T(prev_noise_mag, i1);
      loop_ub = Noisy_Mag_Spectrum->size[0] * Noisy_Mag_Spectrum->size[1];
      for (i1 = 0; i1 < loop_ub; i1++) {
        prev_noise_mag->data[i1] = Noisy_Mag_Spectrum->data[i1];
      }

      A_Pos_SNR_init_not_empty = true;
    }

    i1 = delta_tmp->size[0] * delta_tmp->size[1];
    delta_tmp->size[0] = 1;
    delta_tmp->size[1] = prev_noise_mag->size[1];
    emxEnsureCapacity_real_T(delta_tmp, i1);
    loop_ub = prev_noise_mag->size[0] * prev_noise_mag->size[1];
    for (i1 = 0; i1 < loop_ub; i1++) {
      delta_tmp->data[i1] = 0.9 * prev_noise_mag->data[i1];
    }

    i1 = delta_tmp->size[0] * delta_tmp->size[1];
    i2 = delta_tmp->size[0] * delta_tmp->size[1];
    delta_tmp->size[0] = 1;
    emxEnsureCapacity_real_T(delta_tmp, i2);
    loop_ub = i1 - 1;
    for (i1 = 0; i1 <= loop_ub; i1++) {
      delta_tmp->data[i1] += 0.099999999999999978 * Noisy_Mag_Spectrum->data[i1];
    }

    i1 = noise_mag->size[0] * noise_mag->size[1];
    noise_mag->size[0] = 1;
    noise_mag->size[1] = prev_noise_mag->size[1];
    emxEnsureCapacity_real_T(noise_mag, i1);
    loop_ub = prev_noise_mag->size[0] * prev_noise_mag->size[1];
    for (i1 = 0; i1 < loop_ub; i1++) {
      noise_mag->data[i1] = prev_noise_mag->data[i1];
    }

    i1 = Noisy_Mag_Spectrum->size[1];
    for (nx = 0; nx < i1; nx++) {
      d = prev_noise_mag->data[nx];
      d1 = delta_tmp->data[nx];
      if ((d < 1.2 * d1) && (d > 0.85 * d1)) {
        noise_mag->data[nx] = d1;
      }
    }

    i1 = prev_noise_mag->size[0] * prev_noise_mag->size[1];
    prev_noise_mag->size[0] = 1;
    prev_noise_mag->size[1] = noise_mag->size[1];
    emxEnsureCapacity_real_T(prev_noise_mag, i1);
    loop_ub = noise_mag->size[0] * noise_mag->size[1];
    for (i1 = 0; i1 < loop_ub; i1++) {
      prev_noise_mag->data[i1] = noise_mag->data[i1];
    }

    /* Estimate Noise power Spectrum & A Posteriori SNR */
    i1 = Noisy_Mag_Spectrum->size[0] * Noisy_Mag_Spectrum->size[1];
    i2 = Noisy_Mag_Spectrum->size[0] * Noisy_Mag_Spectrum->size[1];
    Noisy_Mag_Spectrum->size[0] = 1;
    emxEnsureCapacity_real_T(Noisy_Mag_Spectrum, i2);
    loop_ub = i1 - 1;
    for (i1 = 0; i1 <= loop_ub; i1++) {
      d = Noisy_Mag_Spectrum->data[i1];
      d *= d;
      Noisy_Mag_Spectrum->data[i1] = d;
    }

    i1 = noise_mag->size[0] * noise_mag->size[1];
    i2 = noise_mag->size[0] * noise_mag->size[1];
    noise_mag->size[0] = 1;
    emxEnsureCapacity_real_T(noise_mag, i2);
    loop_ub = i1 - 1;
    for (i1 = 0; i1 <= loop_ub; i1++) {
      d = noise_mag->data[i1];
      d *= d;
      noise_mag->data[i1] = d;
    }

    i1 = Enhanced_Magnitude_Spectrum->size[0];
    Enhanced_Magnitude_Spectrum->size[0] = Noisy_Mag_Spectrum->size[1];
    emxEnsureCapacity_real_T(Enhanced_Magnitude_Spectrum, i1);
    loop_ub = Noisy_Mag_Spectrum->size[1];
    for (i1 = 0; i1 < loop_ub; i1++) {
      Enhanced_Magnitude_Spectrum->data[i1] = 0.0;
    }

    Band_size = (double)Noisy_Mag_Spectrum->size[1] / 4.0;
    if (1.0 > Band_size) {
      i3 = -1;
      loop_ub = -1;
      i1 = -1;
      i2 = -1;
    } else {
      i3 = -1;
      loop_ub = (int)Band_size - 1;
      i1 = -1;
      i2 = loop_ub;
    }

    nx = i2 - -1;
    if (nx == 0) {
      b_tmp = 0.0;
    } else {
      b_tmp = Noisy_Mag_Spectrum->data[0];
      for (k = 2; k <= nx; k++) {
        b_tmp += Noisy_Mag_Spectrum->data[-1 + k];
      }
    }

    nx = loop_ub - -1;
    if (nx == 0) {
      y = 0.0;
    } else {
      y = noise_mag->data[0];
      for (k = 2; k <= nx; k++) {
        y += noise_mag->data[-1 + k];
      }
    }

    b_tmp = 10.0 * log10(b_tmp / y);
    y = SF / 2.0 * (double)Noisy_Mag_Spectrum->size[1] * Band_size;
    if (1.0 > Band_size) {
      tmp_tmp = 0;
      loop_ub = 0;
      x_tmp = 1;
    } else {
      tmp_tmp = 0;
      loop_ub = (int)Band_size;
      x_tmp = 1;
    }

    if (b_tmp < -5.0) {
      b_tmp = 4.75;
    } else if (b_tmp > 20.0) {
      b_tmp = 1.0;
    } else {
      b_tmp = 4.0 - 0.15 * b_tmp;
    }

    if (y < 1000.0) {
      y = 1.0;
    } else if (y > SF / 2.0 - 2000.0) {
      y = 1.5;
    } else {
      y = 2.5;
    }

    b_tmp *= y;
    vstride = 1;
    i2 = delta_tmp->size[0] * delta_tmp->size[1];
    delta_tmp->size[0] = 1;
    delta_tmp->size[1] = loop_ub;
    emxEnsureCapacity_real_T(delta_tmp, i2);
    for (i2 = 0; i2 < loop_ub; i2++) {
      delta_tmp->data[i2] = Noisy_Mag_Spectrum->data[i2] - b_tmp *
        noise_mag->data[i2];
    }

    nx = delta_tmp->size[1];
    for (k = 0; k < nx; k++) {
      delta_tmp->data[k] = sqrt(delta_tmp->data[k]);
    }

    loop_ub = delta_tmp->size[1];
    for (i2 = 0; i2 < loop_ub; i2++) {
      Enhanced_Magnitude_Spectrum->data[i2] = delta_tmp->data[i2];
    }

    d = 2.0 * Band_size;
    if (Band_size + 1.0 > d) {
      loop_ub = -1;
      i2 = -1;
    } else {
      i3 = (int)(Band_size + 1.0) - 2;
      loop_ub = (int)d - 1;
      i1 = i3;
      i2 = loop_ub;
    }

    nx = i2 - i1;
    if (nx == 0) {
      b_tmp = 0.0;
    } else {
      b_tmp = Noisy_Mag_Spectrum->data[i1 + 1];
      for (k = 2; k <= nx; k++) {
        b_tmp += Noisy_Mag_Spectrum->data[i1 + k];
      }
    }

    nx = loop_ub - i3;
    if (nx == 0) {
      y = 0.0;
    } else {
      y = noise_mag->data[i3 + 1];
      for (k = 2; k <= nx; k++) {
        y += noise_mag->data[i3 + k];
      }
    }

    b_tmp = 10.0 * log10(b_tmp / y);
    y = SF / 2.0 * (double)Noisy_Mag_Spectrum->size[1] * Band_size * 2.0;
    if (Band_size + 1.0 > d) {
      loop_ub = 0;
    } else {
      tmp_tmp = (int)(Band_size + 1.0) - 1;
      loop_ub = (int)d;
    }

    if (!(Band_size + 1.0 > 2.0 * Band_size)) {
      x_tmp = (int)(Band_size + 1.0);
    }

    if (b_tmp < -5.0) {
      b_tmp = 4.75;
    } else if (b_tmp > 20.0) {
      b_tmp = 1.0;
    } else {
      b_tmp = 4.0 - 0.15 * b_tmp;
    }

    if (y < 1000.0) {
      y = 1.0;
    } else if (y > SF / 2.0 - 2000.0) {
      y = 1.5;
    } else {
      y = 2.5;
    }

    b_tmp *= y;
    if (!(Band_size + 1.0 > 2.0 * Band_size)) {
      vstride = (int)(Band_size + 1.0);
    }

    i1 = delta_tmp->size[0] * delta_tmp->size[1];
    delta_tmp->size[0] = 1;
    loop_ub -= tmp_tmp;
    delta_tmp->size[1] = loop_ub;
    emxEnsureCapacity_real_T(delta_tmp, i1);
    for (i2 = 0; i2 < loop_ub; i2++) {
      delta_tmp->data[i2] = Noisy_Mag_Spectrum->data[tmp_tmp + i2] - b_tmp *
        noise_mag->data[(x_tmp + i2) - 1];
    }

    nx = delta_tmp->size[1];
    for (k = 0; k < nx; k++) {
      delta_tmp->data[k] = sqrt(delta_tmp->data[k]);
    }

    loop_ub = delta_tmp->size[1];
    for (i2 = 0; i2 < loop_ub; i2++) {
      Enhanced_Magnitude_Spectrum->data[(vstride + i2) - 1] = delta_tmp->data[i2];
    }

    d = 2.0 * Band_size + 1.0;
    d1 = 3.0 * Band_size;
    if (d > d1) {
      i3 = -1;
      loop_ub = -1;
      i1 = -1;
      i2 = -1;
    } else {
      i3 = (int)d - 2;
      loop_ub = (int)d1 - 1;
      i1 = i3;
      i2 = loop_ub;
    }

    nx = i2 - i1;
    if (nx == 0) {
      b_tmp = 0.0;
    } else {
      b_tmp = Noisy_Mag_Spectrum->data[i1 + 1];
      for (k = 2; k <= nx; k++) {
        b_tmp += Noisy_Mag_Spectrum->data[i1 + k];
      }
    }

    nx = loop_ub - i3;
    if (nx == 0) {
      y = 0.0;
    } else {
      y = noise_mag->data[i3 + 1];
      for (k = 2; k <= nx; k++) {
        y += noise_mag->data[i3 + k];
      }
    }

    b_tmp = 10.0 * log10(b_tmp / y);
    y = SF / 2.0 * (double)Noisy_Mag_Spectrum->size[1] * Band_size * 3.0;
    if (d > d1) {
      tmp_tmp = 0;
      loop_ub = 0;
    } else {
      tmp_tmp = (int)d - 1;
      loop_ub = (int)d1;
    }

    if (d > 3.0 * Band_size) {
      x_tmp = 1;
    } else {
      x_tmp = (int)d;
    }

    if (b_tmp < -5.0) {
      b_tmp = 4.75;
    } else if (b_tmp > 20.0) {
      b_tmp = 1.0;
    } else {
      b_tmp = 4.0 - 0.15 * b_tmp;
    }

    if (y < 1000.0) {
      y = 1.0;
    } else if (y > SF / 2.0 - 2000.0) {
      y = 1.5;
    } else {
      y = 2.5;
    }

    b_tmp *= y;
    if (d > 3.0 * Band_size) {
      vstride = 1;
    } else {
      vstride = (int)d;
    }

    i1 = delta_tmp->size[0] * delta_tmp->size[1];
    delta_tmp->size[0] = 1;
    loop_ub -= tmp_tmp;
    delta_tmp->size[1] = loop_ub;
    emxEnsureCapacity_real_T(delta_tmp, i1);
    for (i2 = 0; i2 < loop_ub; i2++) {
      delta_tmp->data[i2] = Noisy_Mag_Spectrum->data[tmp_tmp + i2] - b_tmp *
        noise_mag->data[(x_tmp + i2) - 1];
    }

    nx = delta_tmp->size[1];
    for (k = 0; k < nx; k++) {
      delta_tmp->data[k] = sqrt(delta_tmp->data[k]);
    }

    loop_ub = delta_tmp->size[1];
    for (i2 = 0; i2 < loop_ub; i2++) {
      Enhanced_Magnitude_Spectrum->data[(vstride + i2) - 1] = delta_tmp->data[i2];
    }

    d = 3.0 * Band_size + 1.0;
    d1 = 4.0 * Band_size;
    if (d > d1) {
      i3 = -1;
      loop_ub = -1;
      i1 = -1;
      i2 = -1;
    } else {
      i3 = (int)d - 2;
      loop_ub = (int)d1 - 1;
      i1 = i3;
      i2 = loop_ub;
    }

    nx = i2 - i1;
    if (nx == 0) {
      b_tmp = 0.0;
    } else {
      b_tmp = Noisy_Mag_Spectrum->data[i1 + 1];
      for (k = 2; k <= nx; k++) {
        b_tmp += Noisy_Mag_Spectrum->data[i1 + k];
      }
    }

    nx = loop_ub - i3;
    if (nx == 0) {
      y = 0.0;
    } else {
      y = noise_mag->data[i3 + 1];
      for (k = 2; k <= nx; k++) {
        y += noise_mag->data[i3 + k];
      }
    }

    b_tmp = 10.0 * log10(b_tmp / y);
    y = SF / 2.0 * (double)Noisy_Mag_Spectrum->size[1] * Band_size * 4.0;
    if (d > d1) {
      tmp_tmp = 0;
      loop_ub = 0;
    } else {
      tmp_tmp = (int)d - 1;
      loop_ub = (int)d1;
    }

    if (d > 4.0 * Band_size) {
      x_tmp = 1;
    } else {
      x_tmp = (int)d;
    }

    if (b_tmp < -5.0) {
      b_tmp = 4.75;
    } else if (b_tmp > 20.0) {
      b_tmp = 1.0;
    } else {
      b_tmp = 4.0 - 0.15 * b_tmp;
    }

    if (y < 1000.0) {
      y = 1.0;
    } else if (y > SF / 2.0 - 2000.0) {
      y = 1.5;
    } else {
      y = 2.5;
    }

    b_tmp *= y;
    if (d > 4.0 * Band_size) {
      vstride = 1;
    } else {
      vstride = (int)d;
    }

    i1 = delta_tmp->size[0] * delta_tmp->size[1];
    delta_tmp->size[0] = 1;
    loop_ub -= tmp_tmp;
    delta_tmp->size[1] = loop_ub;
    emxEnsureCapacity_real_T(delta_tmp, i1);
    for (i2 = 0; i2 < loop_ub; i2++) {
      delta_tmp->data[i2] = Noisy_Mag_Spectrum->data[tmp_tmp + i2] - b_tmp *
        noise_mag->data[(x_tmp + i2) - 1];
    }

    nx = delta_tmp->size[1];
    for (k = 0; k < nx; k++) {
      delta_tmp->data[k] = sqrt(delta_tmp->data[k]);
    }

    loop_ub = delta_tmp->size[1];
    for (i2 = 0; i2 < loop_ub; i2++) {
      Enhanced_Magnitude_Spectrum->data[(vstride + i2) - 1] = delta_tmp->data[i2];
    }

    /* Enhance */
    if (2 > Enhanced_Magnitude_Spectrum->size[0]) {
      i1 = 0;
      i2 = 0;
    } else {
      i1 = 1;
      i2 = Enhanced_Magnitude_Spectrum->size[0];
    }

    loop_ub = i2 - i1;
    tmp_tmp = x->size[0];
    x->size[0] = loop_ub;
    emxEnsureCapacity_real_T(x, tmp_tmp);
    for (tmp_tmp = 0; tmp_tmp < loop_ub; tmp_tmp++) {
      x->data[tmp_tmp] = Enhanced_Magnitude_Spectrum->data[i1 + tmp_tmp];
    }

    nx = 2;
    if (loop_ub != 1) {
      nx = 1;
    }

    if (loop_ub != 0) {
      if (nx <= 1) {
        tmp_tmp = i2 - i1;
      } else {
        tmp_tmp = 1;
      }

      if (tmp_tmp > 1) {
        vstride = 1;
        for (k = 0; k <= nx - 2; k++) {
          vstride *= loop_ub;
        }

        if (nx <= 1) {
          i1 = (i2 - i1) - 1;
        } else {
          i1 = 0;
        }

        nx = (i1 + 1) >> 1;
        i2 = vstride - 1;
        for (loop_ub = 0; loop_ub <= i2; loop_ub++) {
          for (k = 0; k < nx; k++) {
            tmp_tmp = loop_ub + k * vstride;
            b_tmp = x->data[tmp_tmp];
            x_tmp = loop_ub + (i1 - k) * vstride;
            x->data[tmp_tmp] = x->data[x_tmp];
            x->data[x_tmp] = b_tmp;
          }
        }
      }
    }

    loop_ub = Enhanced_Magnitude_Spectrum->size[0];
    i1 = b_Enhanced_Magnitude_Spectrum->size[0];
    b_Enhanced_Magnitude_Spectrum->size[0] = (Enhanced_Magnitude_Spectrum->size
      [0] + x->size[0]) + 1;
    emxEnsureCapacity_real_T(b_Enhanced_Magnitude_Spectrum, i1);
    for (i1 = 0; i1 < loop_ub; i1++) {
      b_Enhanced_Magnitude_Spectrum->data[i1] =
        Enhanced_Magnitude_Spectrum->data[i1];
    }

    b_Enhanced_Magnitude_Spectrum->data[Enhanced_Magnitude_Spectrum->size[0]] =
      Enhanced_Magnitude_Spectrum->data[0];
    loop_ub = x->size[0];
    for (i1 = 0; i1 < loop_ub; i1++) {
      b_Enhanced_Magnitude_Spectrum->data[(i1 +
        Enhanced_Magnitude_Spectrum->size[0]) + 1] = x->data[i1];
    }

    i1 = Enhanced_Magnitude_Spectrum->size[0];
    Enhanced_Magnitude_Spectrum->size[0] = b_Enhanced_Magnitude_Spectrum->size[0];
    emxEnsureCapacity_real_T(Enhanced_Magnitude_Spectrum, i1);
    loop_ub = b_Enhanced_Magnitude_Spectrum->size[0];
    for (i1 = 0; i1 < loop_ub; i1++) {
      Enhanced_Magnitude_Spectrum->data[i1] =
        b_Enhanced_Magnitude_Spectrum->data[i1];
    }

    /* Convert to double sided spectrum */
    i1 = tmp->size[0] * tmp->size[1];
    tmp->size[0] = 1;
    tmp->size[1] = Phase->size[1];
    emxEnsureCapacity_creal_T(tmp, i1);
    loop_ub = Phase->size[0] * Phase->size[1];
    for (i1 = 0; i1 < loop_ub; i1++) {
      tmp->data[i1].re = Phase->data[i1] * 0.0;
      tmp->data[i1].im = Phase->data[i1];
    }

    nx = tmp->size[1];
    for (k = 0; k < nx; k++) {
      if (tmp->data[k].im == 0.0) {
        tmp->data[k].re = exp(tmp->data[k].re);
        tmp->data[k].im = 0.0;
      } else if (rtIsInf(tmp->data[k].im) && rtIsInf(tmp->data[k].re) &&
                 (tmp->data[k].re < 0.0)) {
        tmp->data[k].re = 0.0;
        tmp->data[k].im = 0.0;
      } else {
        b_tmp = exp(tmp->data[k].re / 2.0);
        tmp->data[k].re = b_tmp * (b_tmp * cos(tmp->data[k].im));
        tmp->data[k].im = b_tmp * (b_tmp * sin(tmp->data[k].im));
      }
    }

    /* Mag&Phase to complex */
    b_x = b_log2(window_len);
    c_Enhanced_Magnitude_Spectrum.re = Enhanced_Magnitude_Spectrum->data[0] *
      tmp->data[0].re;
    c_Enhanced_Magnitude_Spectrum.im = Enhanced_Magnitude_Spectrum->data[0] *
      tmp->data[0].im;
    loop_ub = (int)powf(2.0F, ceilf(b_x));
    fft(c_Enhanced_Magnitude_Spectrum, loop_ub, r);
    i1 = tmp->size[0] * tmp->size[1];
    tmp->size[0] = 1;
    tmp->size[1] = loop_ub;
    emxEnsureCapacity_creal_T(tmp, i1);
    for (i1 = 0; i1 < loop_ub; i1++) {
      tmp->data[i1] = r->data[i1];
    }

    /* Convert to double sided spectrum and ifft */
    if (!(b_frame_nu > f)) {
      abort();
    }
  }

  emxFree_real_T(&b_Enhanced_Magnitude_Spectrum);
  emxFree_creal_T(&r);
  emxFree_real_T(&x);
  emxFree_real_T(&noise_mag);
  emxFree_real_T(&delta_tmp);
  emxFree_real_T(&Phase);
  emxFree_real_T(&Noisy_Mag_Spectrum);
  emxFree_creal_T(&tmp);
  emxFree_real_T(&Enhanced_Magnitude_Spectrum);
}

/*
 * File trailer for Embedded_MBSS.c
 *
 * [EOF]
 */
