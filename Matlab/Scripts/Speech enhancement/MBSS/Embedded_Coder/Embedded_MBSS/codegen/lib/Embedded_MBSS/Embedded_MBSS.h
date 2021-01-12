/*
 * File: Embedded_MBSS.h
 *
 * MATLAB Coder version            : 4.3
 * C/C++ source code generated on  : 14-Oct-2020 13:35:35
 */

#ifndef EMBEDDED_MBSS_H
#define EMBEDDED_MBSS_H

/* Include Files */
#include <stddef.h>
#include <stdlib.h>
#include "rtwtypes.h"
#include "Embedded_MBSS_types.h"

/* Function Declarations */
extern void A_Pos_SNR_init_not_empty_init(void);
extern void A_Posteriori_SNR_free(void);
extern void A_Posteriori_SNR_init(void);
extern void Embedded_MBSS(emxArray_real_T *Input, double SF, emxArray_real_T
  *Output);

#endif

/*
 * File trailer for Embedded_MBSS.h
 *
 * [EOF]
 */
