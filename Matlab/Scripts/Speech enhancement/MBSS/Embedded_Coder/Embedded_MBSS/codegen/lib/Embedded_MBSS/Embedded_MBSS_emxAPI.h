/*
 * File: Embedded_MBSS_emxAPI.h
 *
 * MATLAB Coder version            : 4.3
 * C/C++ source code generated on  : 14-Oct-2020 13:35:35
 */

#ifndef EMBEDDED_MBSS_EMXAPI_H
#define EMBEDDED_MBSS_EMXAPI_H

/* Include Files */
#include <stddef.h>
#include <stdlib.h>
#include "rtwtypes.h"
#include "Embedded_MBSS_types.h"

/* Function Declarations */
extern emxArray_real_T *emxCreateND_real_T(int numDimensions, const int *size);
extern emxArray_real_T *emxCreateWrapperND_real_T(double *data, int
  numDimensions, const int *size);
extern emxArray_real_T *emxCreateWrapper_real_T(double *data, int rows, int cols);
extern emxArray_real_T *emxCreate_real_T(int rows, int cols);
extern void emxDestroyArray_real_T(emxArray_real_T *emxArray);
extern void emxInitArray_real_T(emxArray_real_T **pEmxArray, int numDimensions);

#endif

/*
 * File trailer for Embedded_MBSS_emxAPI.h
 *
 * [EOF]
 */
