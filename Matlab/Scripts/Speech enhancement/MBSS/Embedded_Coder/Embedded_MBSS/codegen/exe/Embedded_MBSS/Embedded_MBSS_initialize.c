/*
 * File: Embedded_MBSS_initialize.c
 *
 * MATLAB Coder version            : 4.3
 * C/C++ source code generated on  : 14-Oct-2020 16:14:36
 */

/* Include Files */
#include "Embedded_MBSS_initialize.h"
#include "Embedded_MBSS.h"
#include "Embedded_MBSS_data.h"
#include "rt_nonfinite.h"

/* Function Definitions */

/*
 * Arguments    : void
 * Return Type  : void
 */
void Embedded_MBSS_initialize(void)
{
  rt_InitInfAndNaN();
  A_Pos_SNR_init_not_empty_init();
  A_Posteriori_SNR_init();
  isInitialized_Embedded_MBSS = true;
}

/*
 * File trailer for Embedded_MBSS_initialize.c
 *
 * [EOF]
 */
