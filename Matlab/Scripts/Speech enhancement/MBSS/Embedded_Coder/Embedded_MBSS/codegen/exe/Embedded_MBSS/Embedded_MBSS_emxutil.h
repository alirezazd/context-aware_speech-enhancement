/*
 * File: Embedded_MBSS_emxutil.h
 *
 * MATLAB Coder version            : 4.3
 * C/C++ source code generated on  : 14-Oct-2020 16:14:36
 */

#ifndef EMBEDDED_MBSS_EMXUTIL_H
#define EMBEDDED_MBSS_EMXUTIL_H

/* Include Files */
#include <stddef.h>
#include <stdlib.h>
#include "rtwtypes.h"
#include "Embedded_MBSS_types.h"

/* Function Declarations */
extern void emxEnsureCapacity_creal_T(emxArray_creal_T *emxArray, int oldNumel);
extern void emxEnsureCapacity_real_T(emxArray_real_T *emxArray, int oldNumel);
extern void emxFree_creal_T(emxArray_creal_T **pEmxArray);
extern void emxFree_real_T(emxArray_real_T **pEmxArray);
extern void emxInit_creal_T(emxArray_creal_T **pEmxArray, int numDimensions);
extern void emxInit_real_T(emxArray_real_T **pEmxArray, int numDimensions);

#endif

/*
 * File trailer for Embedded_MBSS_emxutil.h
 *
 * [EOF]
 */
