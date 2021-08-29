#ifndef RTW_HEADER_soc_hwsw_stream_fpga_frame_h_
#define RTW_HEADER_soc_hwsw_stream_fpga_frame_h_
#include <string.h>
#include <stddef.h>
#include "rtw_modelmap_simtarget.h"
#ifndef soc_hwsw_stream_fpga_frame_COMMON_INCLUDES_
#define soc_hwsw_stream_fpga_frame_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "slsv_diagnostic_codegen_c_api.h"
#include "sl_AsyncioQueue/AsyncioQueueCAPI.h"
#include "simstruc.h"
#include "fixedpoint.h"
#endif
#include "soc_hwsw_stream_fpga_frame_types.h"
#include "multiword_types.h"
#include "rt_nonfinite.h"
typedef struct { int32_T bb1pu0tqaq_mbvzarwird [ 10000 ] ; StreamM2SBusObj
ncytrzvmh2 ; int16_T guw5t1sjru [ 10000 ] ; int16_T j1tkswaebr [ 10000 ] ;
boolean_T c1kjh1dg1z ; boolean_T azijtms3h5 ; } lekejd12ef ; typedef struct {
int32_T i2ue0cz1c2 ; int32_T okclg0jl0i ; int16_T dxlsmhcir2 [ 150000 ] ;
uint16_T axkdmzld1q ; uint16_T jnswgswnxz ; int8_T migw3docpj ; uint8_T
gtheq5nfsd ; } ifowtm5kfm ; struct opsep3ytjib_ { int16_T P_0 ; int16_T P_1 ;
int16_T P_2 [ 16 ] ; boolean_T P_3 ; boolean_T P_4 ; uint8_T P_5 ; } ; struct
nxhoee0u3c { struct SimStruct_tag * _mdlRefSfcnS ; struct {
rtwCAPI_ModelMappingInfo mmi ; rtwCAPI_ModelMapLoggingInstanceInfo
mmiLogInstanceInfo ; void * dataAddress [ 4 ] ; int32_T * vardimsAddress [ 4
] ; RTWLoggingFcnPtr loggingPtrs [ 4 ] ; sysRanDType * systemRan [ 3 ] ;
int_T systemTid [ 3 ] ; } DataMapInfo ; struct { int_T mdlref_GlobalTID [ 1 ]
; } Timing ; } ; typedef struct { lekejd12ef rtb ; ifowtm5kfm rtdw ;
kftmn0ibdm rtm ; } ggh1s0prkfp ; extern void amuimanwdy ( SimStruct *
_mdlRefSfcnS , int_T mdlref_TID0 , kftmn0ibdm * const knmsj142ui , lekejd12ef
* localB , ifowtm5kfm * localDW , void * sysRanPtr , int contextTid ,
rtwCAPI_ModelMappingInfo * rt_ParentMMI , const char_T * rt_ChildPath , int_T
rt_ChildMMIIdx , int_T rt_CSTATEIdx ) ; extern void
mr_soc_hwsw_stream_fpga_frame_MdlInfoRegFcn ( SimStruct * mdlRefSfcnS ,
char_T * modelName , int_T * retVal ) ; extern mxArray *
mr_soc_hwsw_stream_fpga_frame_GetDWork ( const ggh1s0prkfp * mdlrefDW ) ;
extern void mr_soc_hwsw_stream_fpga_frame_SetDWork ( ggh1s0prkfp * mdlrefDW ,
const mxArray * ssDW ) ; extern void
mr_soc_hwsw_stream_fpga_frame_RegisterSimStateChecksum ( SimStruct * S ) ;
extern mxArray * mr_soc_hwsw_stream_fpga_frame_GetSimStateDisallowedBlocks (
) ; extern const rtwCAPI_ModelMappingStaticInfo *
soc_hwsw_stream_fpga_frame_GetCAPIStaticMap ( void ) ; extern void bfvrmgiaqy
( boolean_T * oswljlsclj , boolean_T * axvulmbfct , lekejd12ef * localB ,
ifowtm5kfm * localDW ) ; extern void bycpylyppk ( ifowtm5kfm * localDW ) ;
extern void lsd3uzvoce ( lekejd12ef * localB , ifowtm5kfm * localDW ) ;
extern void brynwuqcbh ( lekejd12ef * localB , ifowtm5kfm * localDW ) ;
extern void soc_hwsw_stream_fpga_frame ( const boolean_T * ed1yq35nvn , const
boolean_T * au3wknjwbe , const boolean_T * lsfpr1bauo , uint32_T iqfk4n3zzn [
10000 ] , boolean_T * oswljlsclj , boolean_T * axvulmbfct , boolean_T *
dhfsahisgl , boolean_T * bmiadi4buq , lekejd12ef * localB , ifowtm5kfm *
localDW ) ; extern void hwg31dzvng ( kftmn0ibdm * const knmsj142ui ) ;
#endif
