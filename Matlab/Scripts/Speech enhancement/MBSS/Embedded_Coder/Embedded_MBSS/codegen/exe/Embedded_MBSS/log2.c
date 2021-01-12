/*
 * File: log2.c
 *
 * MATLAB Coder version            : 4.3
 * C/C++ source code generated on  : 14-Oct-2020 16:14:36
 */

/* Include Files */
#include "log2.h"
#include "Embedded_MBSS.h"
#include "rt_nonfinite.h"
#include <math.h>

/* Function Definitions */

/*
 * Arguments    : float x
 * Return Type  : float
 */
float b_log2(float x)
{
  float f;
  float t;
  int eint;
  if (x == 0.0F) {
    f = rtMinusInfF;
  } else if (x < 0.0F) {
    f = rtNaNF;
  } else if ((!rtIsInfF(x)) && (!rtIsNaNF(x))) {
    t = frexpf(x, &eint);
    if (t == 0.5F) {
      f = (float)eint - 1.0F;
    } else if ((eint == 1.0F) && (t < 0.75F)) {
      f = logf(2.0F * t) / 0.693147182F;
    } else {
      f = logf(t) / 0.693147182F + (float)eint;
    }
  } else {
    f = x;
  }

  return f;
}

/*
 * File trailer for log2.c
 *
 * [EOF]
 */
