/*
 * File: Embedded_MBSS_terminate.c
 *
 * MATLAB Coder version            : 4.3
 * C/C++ source code generated on  : 14-Oct-2020 16:14:36
 */

/* Include Files */
#include "Embedded_MBSS_terminate.h"
#include "Embedded_MBSS.h"
#include "Embedded_MBSS_data.h"
#include "rt_nonfinite.h"

/* Function Definitions */

/*
 * Arguments    : void
 * Return Type  : void
 */
void Embedded_MBSS_terminate(void)
{
  A_Posteriori_SNR_free();
  isInitialized_Embedded_MBSS = false;
}

/*
 * File trailer for Embedded_MBSS_terminate.c
 *
 * [EOF]
 */
