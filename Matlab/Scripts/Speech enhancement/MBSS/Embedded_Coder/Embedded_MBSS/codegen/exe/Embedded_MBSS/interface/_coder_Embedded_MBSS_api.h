/*
 * File: _coder_Embedded_MBSS_api.h
 *
 * MATLAB Coder version            : 4.3
 * C/C++ source code generated on  : 14-Oct-2020 16:14:36
 */

#ifndef _CODER_EMBEDDED_MBSS_API_H
#define _CODER_EMBEDDED_MBSS_API_H

/* Include Files */
#include <stddef.h>
#include <stdlib.h>
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"

/* Variable Declarations */
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

/* Function Declarations */
extern void Embedded_MBSS(real_T SF);
extern void Embedded_MBSS_api(const mxArray * const prhs[2], int32_T nlhs, const
  mxArray *plhs[1]);
extern void Embedded_MBSS_atexit(void);
extern void Embedded_MBSS_initialize(void);
extern void Embedded_MBSS_terminate(void);
extern void Embedded_MBSS_xil_shutdown(void);
extern void Embedded_MBSS_xil_terminate(void);

#endif

/*
 * File trailer for _coder_Embedded_MBSS_api.h
 *
 * [EOF]
 */
