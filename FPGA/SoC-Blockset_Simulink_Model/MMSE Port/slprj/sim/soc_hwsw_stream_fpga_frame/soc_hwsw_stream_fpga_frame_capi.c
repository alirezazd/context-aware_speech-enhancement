#include <stddef.h>
#include "rtw_capi.h"
#ifdef HOST_CAPI_BUILD
#include "soc_hwsw_stream_fpga_frame_capi_host.h"
#define sizeof(s) ((size_t)(0xFFFF))
#undef rt_offsetof
#define rt_offsetof(s,el) ((uint16_T)(0xFFFF))
#define TARGET_CONST
#define TARGET_STRING(s) (s)    
#else
#include "builtin_typeid_types.h"
#include "soc_hwsw_stream_fpga_frame.h"
#include "soc_hwsw_stream_fpga_frame_capi.h"
#include "soc_hwsw_stream_fpga_frame_private.h"
#ifdef LIGHT_WEIGHT_CAPI
#define TARGET_CONST                  
#define TARGET_STRING(s)               (NULL)                    
#else
#define TARGET_CONST                   const
#define TARGET_STRING(s)               (s)
#endif
#endif
static rtwCAPI_Signals rtBlockSignals [ ] = { { 0 , 0 , ( NULL ) , ( NULL ) ,
0 , 0 , 0 , 0 , 0 } } ; static rtwCAPI_States rtBlockStates [ ] = { { 0 , - 1
, TARGET_STRING (
 "soc_hwsw_stream_fpga_frame/FPGA Algorithm Wrapper/FPGA Algorithm/FPGA/Low Pass Filter\nfstop//fpass = 0.45//0.7"
) , TARGET_STRING ( "states" ) , "" , 0 , 0 , 0 , 0 , 0 , 0 , - 1 , 0 } , { 1
, - 1 , TARGET_STRING (
 "soc_hwsw_stream_fpga_frame/FPGA Algorithm Wrapper/FPGA Algorithm/FPGA/Low Pass Filter\nfstop//fpass = 0.45//0.7"
) , TARGET_STRING ( "circBuf" ) , "" , 0 , 1 , 1 , 0 , 0 , 0 , - 1 , 0 } , {
2 , - 1 , TARGET_STRING (
 "soc_hwsw_stream_fpga_frame/Test Source Wrapper/Test Source/Signal Generator/10KHz Wave"
) , TARGET_STRING ( "TableIdx" ) , "" , 0 , 2 , 1 , 0 , 0 , 0 , - 1 , 0 } , {
3 , - 1 , TARGET_STRING (
 "soc_hwsw_stream_fpga_frame/Test Source Wrapper/Test Source/Signal Generator/1KHz Wave"
) , TARGET_STRING ( "TableIdx" ) , "" , 0 , 2 , 1 , 0 , 0 , 0 , - 1 , 0 } , {
0 , - 1 , ( NULL ) , ( NULL ) , ( NULL ) , 0 , 0 , 0 , 0 , 0 , 0 , - 1 , 0 }
} ; static int_T rt_LoggedStateIdxList [ ] = { 2 , 0 , 4 , 3 } ;
#ifndef HOST_CAPI_BUILD
static void soc_hwsw_stream_fpga_frame_InitializeDataAddr ( void * dataAddr [
] , ifowtm5kfm * localDW ) { dataAddr [ 0 ] = ( void * ) ( & localDW ->
dxlsmhcir2 [ 0 ] ) ; dataAddr [ 1 ] = ( void * ) ( & localDW -> i2ue0cz1c2 )
; dataAddr [ 2 ] = ( void * ) ( & localDW -> jnswgswnxz ) ; dataAddr [ 3 ] =
( void * ) ( & localDW -> axkdmzld1q ) ; }
#endif
#ifndef HOST_CAPI_BUILD
static void soc_hwsw_stream_fpga_frame_InitializeVarDimsAddr ( int32_T *
vardimsAddr [ ] ) { vardimsAddr [ 0 ] = ( NULL ) ; }
#endif
#ifndef HOST_CAPI_BUILD
static void soc_hwsw_stream_fpga_frame_InitializeLoggingFunctions (
RTWLoggingFcnPtr loggingPtrs [ ] ) { loggingPtrs [ 0 ] = ( NULL ) ;
loggingPtrs [ 1 ] = ( NULL ) ; loggingPtrs [ 2 ] = ( NULL ) ; loggingPtrs [ 3
] = ( NULL ) ; }
#endif
static TARGET_CONST rtwCAPI_DataTypeMap rtDataTypeMap [ ] = { { "short" ,
"int16_T" , 0 , 0 , sizeof ( int16_T ) , SS_INT16 , 0 , 0 , 0 } , { "int" ,
"int32_T" , 0 , 0 , sizeof ( int32_T ) , SS_INT32 , 0 , 0 , 0 } , {
"unsigned short" , "uint16_T" , 0 , 0 , sizeof ( uint16_T ) , SS_UINT16 , 0 ,
0 , 0 } } ;
#ifdef HOST_CAPI_BUILD
#undef sizeof
#endif
static TARGET_CONST rtwCAPI_ElementMap rtElementMap [ ] = { { ( NULL ) , 0 ,
0 , 0 , 0 } , } ; static rtwCAPI_DimensionMap rtDimensionMap [ ] = { {
rtwCAPI_VECTOR , 0 , 2 , 0 } , { rtwCAPI_SCALAR , 2 , 2 , 0 } } ; static
uint_T rtDimensionArray [ ] = { 150000 , 1 , 1 , 1 } ; static const real_T
rtcapiStoredFloats [ ] = { 0.099999999999999992 , 0.0 } ; static
rtwCAPI_FixPtMap rtFixPtMap [ ] = { { ( NULL ) , ( NULL ) ,
rtwCAPI_FIX_RESERVED , 0 , 0 , 0 } , } ; static rtwCAPI_SampleTimeMap
rtSampleTimeMap [ ] = { { ( const void * ) & rtcapiStoredFloats [ 0 ] , (
const void * ) & rtcapiStoredFloats [ 1 ] , 0 , 0 } } ; static int_T
rtContextSystems [ 3 ] ; static rtwCAPI_LoggingMetaInfo loggingMetaInfo [ ] =
{ { 0 , 0 , "" , 0 } } ; static rtwCAPI_ModelMapLoggingStaticInfo
mmiStaticInfoLogging = { 3 , rtContextSystems , loggingMetaInfo , 0 , NULL ,
{ 0 , NULL , NULL } , 0 , ( NULL ) } ; static rtwCAPI_ModelMappingStaticInfo
mmiStatic = { { rtBlockSignals , 0 , ( NULL ) , 0 , ( NULL ) , 0 } , { ( NULL
) , 0 , ( NULL ) , 0 } , { rtBlockStates , 4 } , { rtDataTypeMap ,
rtDimensionMap , rtFixPtMap , rtElementMap , rtSampleTimeMap ,
rtDimensionArray } , "float" , { 2126919478U , 937904963U , 1511260952U ,
2690052010U } , & mmiStaticInfoLogging , 0 , 0 , rt_LoggedStateIdxList } ;
const rtwCAPI_ModelMappingStaticInfo *
soc_hwsw_stream_fpga_frame_GetCAPIStaticMap ( void ) { return & mmiStatic ; }
#ifndef HOST_CAPI_BUILD
static void soc_hwsw_stream_fpga_frame_InitializeSystemRan ( kftmn0ibdm *
const knmsj142ui , sysRanDType * systemRan [ ] , ifowtm5kfm * localDW , int_T
systemTid [ ] , void * rootSysRanPtr , int rootTid ) { UNUSED_PARAMETER (
knmsj142ui ) ; UNUSED_PARAMETER ( localDW ) ; systemRan [ 0 ] = ( sysRanDType
* ) rootSysRanPtr ; systemRan [ 1 ] = ( sysRanDType * ) & localDW ->
migw3docpj ; systemRan [ 2 ] = ( NULL ) ; systemTid [ 1 ] = knmsj142ui ->
Timing . mdlref_GlobalTID [ 0 ] ; systemTid [ 2 ] = knmsj142ui -> Timing .
mdlref_GlobalTID [ 0 ] ; systemTid [ 0 ] = rootTid ; rtContextSystems [ 0 ] =
0 ; rtContextSystems [ 1 ] = 1 ; rtContextSystems [ 2 ] = 0 ; }
#endif
#ifndef HOST_CAPI_BUILD
void soc_hwsw_stream_fpga_frame_InitializeDataMapInfo ( kftmn0ibdm * const
knmsj142ui , ifowtm5kfm * localDW , void * sysRanPtr , int contextTid ) {
rtwCAPI_SetVersion ( knmsj142ui -> DataMapInfo . mmi , 1 ) ;
rtwCAPI_SetStaticMap ( knmsj142ui -> DataMapInfo . mmi , & mmiStatic ) ;
rtwCAPI_SetLoggingStaticMap ( knmsj142ui -> DataMapInfo . mmi , &
mmiStaticInfoLogging ) ; soc_hwsw_stream_fpga_frame_InitializeDataAddr (
knmsj142ui -> DataMapInfo . dataAddress , localDW ) ;
rtwCAPI_SetDataAddressMap ( knmsj142ui -> DataMapInfo . mmi , knmsj142ui ->
DataMapInfo . dataAddress ) ;
soc_hwsw_stream_fpga_frame_InitializeVarDimsAddr ( knmsj142ui -> DataMapInfo
. vardimsAddress ) ; rtwCAPI_SetVarDimsAddressMap ( knmsj142ui -> DataMapInfo
. mmi , knmsj142ui -> DataMapInfo . vardimsAddress ) ; rtwCAPI_SetPath (
knmsj142ui -> DataMapInfo . mmi , ( NULL ) ) ; rtwCAPI_SetFullPath (
knmsj142ui -> DataMapInfo . mmi , ( NULL ) ) ;
soc_hwsw_stream_fpga_frame_InitializeLoggingFunctions ( knmsj142ui ->
DataMapInfo . loggingPtrs ) ; rtwCAPI_SetLoggingPtrs ( knmsj142ui ->
DataMapInfo . mmi , knmsj142ui -> DataMapInfo . loggingPtrs ) ;
rtwCAPI_SetInstanceLoggingInfo ( knmsj142ui -> DataMapInfo . mmi , &
knmsj142ui -> DataMapInfo . mmiLogInstanceInfo ) ; rtwCAPI_SetChildMMIArray (
knmsj142ui -> DataMapInfo . mmi , ( NULL ) ) ; rtwCAPI_SetChildMMIArrayLen (
knmsj142ui -> DataMapInfo . mmi , 0 ) ;
soc_hwsw_stream_fpga_frame_InitializeSystemRan ( knmsj142ui , knmsj142ui ->
DataMapInfo . systemRan , localDW , knmsj142ui -> DataMapInfo . systemTid ,
sysRanPtr , contextTid ) ; rtwCAPI_SetSystemRan ( knmsj142ui -> DataMapInfo .
mmi , knmsj142ui -> DataMapInfo . systemRan ) ; rtwCAPI_SetSystemTid (
knmsj142ui -> DataMapInfo . mmi , knmsj142ui -> DataMapInfo . systemTid ) ;
rtwCAPI_SetGlobalTIDMap ( knmsj142ui -> DataMapInfo . mmi , & knmsj142ui ->
Timing . mdlref_GlobalTID [ 0 ] ) ; }
#else
#ifdef __cplusplus
extern "C" {
#endif
void soc_hwsw_stream_fpga_frame_host_InitializeDataMapInfo (
soc_hwsw_stream_fpga_frame_host_DataMapInfo_T * dataMap , const char * path )
{ rtwCAPI_SetVersion ( dataMap -> mmi , 1 ) ; rtwCAPI_SetStaticMap ( dataMap
-> mmi , & mmiStatic ) ; rtwCAPI_SetDataAddressMap ( dataMap -> mmi , NULL )
; rtwCAPI_SetVarDimsAddressMap ( dataMap -> mmi , NULL ) ; rtwCAPI_SetPath (
dataMap -> mmi , path ) ; rtwCAPI_SetFullPath ( dataMap -> mmi , NULL ) ;
rtwCAPI_SetChildMMIArray ( dataMap -> mmi , ( NULL ) ) ;
rtwCAPI_SetChildMMIArrayLen ( dataMap -> mmi , 0 ) ; }
#ifdef __cplusplus
}
#endif
#endif
