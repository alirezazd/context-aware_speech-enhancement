/*
 * File: _coder_Embedded_MBSS_api.h
 *
 * MATLAB Coder version            : 4.3
 * C/C++ source code generated on  : 14-Oct-2020 13:35:35
 */

#ifndef _CODER_EMBEDDED_MBSS_API_H
#define _CODER_EMBEDDED_MBSS_API_H

/* Include Files */
#include <stddef.h>
#include <stdlib.h>
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"

/* Type Definitions */
#ifndef struct_emxArray_real_T
#define struct_emxArray_real_T

struct emxArray_real_T
{
  real_T *data;
  int32_T *size;
  int32_T allocatedSize;
  int32_T numDimensions;
  boolean_T canFreeData;
};

#endif                                 /*struct_emxArray_real_T*/

#ifndef typedef_emxArray_real_T
#define typedef_emxArray_real_T

typedef struct emxArray_real_T emxArray_real_T;

#endif                                 /*typedef_emxArray_real_T*/

/* Variable Declarations */
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

/* Function Declarations */
extern void Embedded_MBSS(emxArray_real_T *Input, real_T SF, emxArray_real_T
  *Output);
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
