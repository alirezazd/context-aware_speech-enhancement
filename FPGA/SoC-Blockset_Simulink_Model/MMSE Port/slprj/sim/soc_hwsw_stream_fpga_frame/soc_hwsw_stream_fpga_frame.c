#include "soc_hwsw_stream_fpga_frame_capi.h"
#include "soc_hwsw_stream_fpga_frame.h"
#include "soc_hwsw_stream_fpga_frame_private.h"
static RegMdlInfo rtMdlInfo_soc_hwsw_stream_fpga_frame [ 45 ] = { {
"ggh1s0prkfp" , MDL_INFO_NAME_MDLREF_DWORK , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "cyfobryb1p" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "lprgf5mnju" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "o4wveswfpe" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "djrxl4h53q" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "j5joq5lzkn" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "hqowh2jsri" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "d51ofne1sf" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "jg1ztuirsa" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "pim33h04cb" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "oejuyt3wvj" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "f2ws3up2qj" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "ifowtm5kfm" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "lekejd12ef" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "avi0mkcrri" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "hwg31dzvng" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "lnumxsvppb" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "brynwuqcbh" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "bycpylyppk" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "bfvrmgiaqy" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "amuimanwdy" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "lsd3uzvoce" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "arsm41dgpv" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "soc_hwsw_stream_fpga_frame" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , 0 , ( NULL ) } , { "meftf0ftkh" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "chsjb3p1inw" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "chsjb3p1in" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "nxhoee0u3c" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "kftmn0ibdm" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "StreamS2MBusObj" , MDL_INFO_ID_DATA_TYPE
, 0 , - 1 , ( NULL ) } , { "StreamM2SBusObj" , MDL_INFO_ID_DATA_TYPE , 0 , -
1 , ( NULL ) } , {
"mr_soc_hwsw_stream_fpga_frame_GetSimStateDisallowedBlocks" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , {
"mr_soc_hwsw_stream_fpga_frame_extractBitFieldFromCellArrayWithOffset" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , {
"mr_soc_hwsw_stream_fpga_frame_cacheBitFieldToCellArrayWithOffset" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , {
"mr_soc_hwsw_stream_fpga_frame_restoreDataFromMxArrayWithOffset" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , {
"mr_soc_hwsw_stream_fpga_frame_cacheDataToMxArrayWithOffset" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , {
"mr_soc_hwsw_stream_fpga_frame_extractBitFieldFromMxArray" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , {
"mr_soc_hwsw_stream_fpga_frame_cacheBitFieldToMxArray" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , {
"mr_soc_hwsw_stream_fpga_frame_restoreDataFromMxArray" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , {
"mr_soc_hwsw_stream_fpga_frame_cacheDataAsMxArray" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , {
"mr_soc_hwsw_stream_fpga_frame_RegisterSimStateChecksum" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "mr_soc_hwsw_stream_fpga_frame_SetDWork" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "mr_soc_hwsw_stream_fpga_frame_GetDWork" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * )
"soc_hwsw_stream_fpga_frame" } , { "soc_hwsw_stream_fpga_frame.h" ,
MDL_INFO_MODEL_FILENAME , 0 , - 1 , ( NULL ) } , {
"soc_hwsw_stream_fpga_frame.c" , MDL_INFO_MODEL_FILENAME , 0 , - 1 , ( void *
) "soc_hwsw_stream_fpga_frame" } } ; opsep3ytjib opsep3ytji = { 0 , 0 , { - 2
, - 7 , 0 , 12 , - 5 , - 27 , 28 , 123 , 123 , 28 , - 27 , - 5 , 12 , 0 , - 7
, - 2 } , 1 , 0 , 0U } ; void bfvrmgiaqy ( boolean_T * oswljlsclj , boolean_T
* axvulmbfct , lekejd12ef * localB , ifowtm5kfm * localDW ) { int32_T i ;
localDW -> axkdmzld1q = 0U ; localDW -> jnswgswnxz = 0U ; localB ->
ncytrzvmh2 . valid = localB -> c1kjh1dg1z ; localB -> ncytrzvmh2 . tlast =
localB -> azijtms3h5 ; * oswljlsclj = localB -> ncytrzvmh2 . valid ; *
axvulmbfct = localB -> ncytrzvmh2 . tlast ; localDW -> i2ue0cz1c2 = 0 ; for (
i = 0 ; i < 150000 ; i ++ ) { localDW -> dxlsmhcir2 [ i ] = opsep3ytji . P_1
; } for ( i = 0 ; i < 10000 ; i ++ ) { localB -> j1tkswaebr [ i ] =
opsep3ytji . P_0 ; } } void bycpylyppk ( ifowtm5kfm * localDW ) { localDW ->
axkdmzld1q = 0U ; localDW -> jnswgswnxz = 0U ; } void lsd3uzvoce ( lekejd12ef
* localB , ifowtm5kfm * localDW ) { localB -> c1kjh1dg1z = opsep3ytji . P_3 ;
localB -> azijtms3h5 = opsep3ytji . P_4 ; localDW -> axkdmzld1q = 0U ;
localDW -> jnswgswnxz = 0U ; localDW -> gtheq5nfsd = 0U ; } void
soc_hwsw_stream_fpga_frame ( const boolean_T * ed1yq35nvn , const boolean_T *
au3wknjwbe , const boolean_T * lsfpr1bauo , uint32_T iqfk4n3zzn [ 10000 ] ,
boolean_T * oswljlsclj , boolean_T * axvulmbfct , boolean_T * dhfsahisgl ,
boolean_T * bmiadi4buq , lekejd12ef * localB , ifowtm5kfm * localDW ) {
int32_T acc1 ; int32_T cff ; int32_T i ; int32_T k ; int32_T memIdx ; int32_T
uIdx ; int16_T ljapm3lc45 ; localB -> c1kjh1dg1z = opsep3ytji . P_3 ; localB
-> azijtms3h5 = opsep3ytji . P_4 ; localB -> ncytrzvmh2 . valid = localB ->
c1kjh1dg1z ; localB -> ncytrzvmh2 . tlast = localB -> azijtms3h5 ; *
oswljlsclj = localB -> ncytrzvmh2 . valid ; * axvulmbfct = localB ->
ncytrzvmh2 . tlast ; for ( i = 0 ; i < 10000 ; i ++ ) { localB -> guw5t1sjru
[ i ] = chsjb3p1inw . a02r2kayec [ localDW -> axkdmzld1q ] ; localDW ->
axkdmzld1q ++ ; if ( localDW -> axkdmzld1q >= 100 ) { localDW -> axkdmzld1q =
0U ; } ljapm3lc45 = chsjb3p1inw . mr5fft20zw [ localDW -> jnswgswnxz ] ;
localDW -> jnswgswnxz ++ ; if ( localDW -> jnswgswnxz >= 10 ) { localDW ->
jnswgswnxz = 0U ; } if ( ! * ed1yq35nvn ) { localB -> guw5t1sjru [ i ] =
ljapm3lc45 ; } } if ( localB -> c1kjh1dg1z ) { uIdx = 0 ; for ( k = 0 ; k <
10000 ; k ++ ) { memIdx = k * 15 ; acc1 = localB -> guw5t1sjru [ uIdx ] *
opsep3ytji . P_2 [ 0 ] ; uIdx ++ ; cff = 1 ; for ( i = localDW -> i2ue0cz1c2
; i < 15 ; i ++ ) { acc1 += localDW -> dxlsmhcir2 [ memIdx + i ] * opsep3ytji
. P_2 [ cff ] ; cff ++ ; } for ( i = 0 ; i < localDW -> i2ue0cz1c2 ; i ++ ) {
acc1 += localDW -> dxlsmhcir2 [ memIdx + i ] * opsep3ytji . P_2 [ cff ] ; cff
++ ; } localB -> bb1pu0tqaq_mbvzarwird [ k ] = acc1 ; localB -> j1tkswaebr [
k ] = ( int16_T ) ( localB -> bb1pu0tqaq_mbvzarwird [ k ] >> 8 ) ; }
srUpdateBC ( localDW -> migw3docpj ) ; } for ( i = 0 ; i < 10000 ; i ++ ) {
iqfk4n3zzn [ i ] = ( uint32_T ) localB -> j1tkswaebr [ i ] ; } * bmiadi4buq =
* lsfpr1bauo ; * dhfsahisgl = * au3wknjwbe ; } void brynwuqcbh ( lekejd12ef *
localB , ifowtm5kfm * localDW ) { int32_T k ; if ( localB -> c1kjh1dg1z ) {
localDW -> i2ue0cz1c2 -- ; if ( localDW -> i2ue0cz1c2 < 0 ) { localDW ->
i2ue0cz1c2 = 14 ; } for ( k = 0 ; k < 10000 ; k ++ ) { localDW -> dxlsmhcir2
[ localDW -> i2ue0cz1c2 + k * 15 ] = localB -> guw5t1sjru [ k ] ; } } } void
hwg31dzvng ( kftmn0ibdm * const knmsj142ui ) { if ( !
slIsRapidAcceleratorSimulating ( ) ) { slmrRunPluginEvent ( knmsj142ui ->
_mdlRefSfcnS , "soc_hwsw_stream_fpga_frame" ,
"SIMSTATUS_TERMINATING_MODELREF_ACCEL_EVENT" ) ; } } void amuimanwdy (
SimStruct * _mdlRefSfcnS , int_T mdlref_TID0 , kftmn0ibdm * const knmsj142ui
, lekejd12ef * localB , ifowtm5kfm * localDW , void * sysRanPtr , int
contextTid , rtwCAPI_ModelMappingInfo * rt_ParentMMI , const char_T *
rt_ChildPath , int_T rt_ChildMMIIdx , int_T rt_CSTATEIdx ) { rt_InitInfAndNaN
( sizeof ( real_T ) ) ; ( void ) memset ( ( void * ) knmsj142ui , 0 , sizeof
( kftmn0ibdm ) ) ; knmsj142ui -> Timing . mdlref_GlobalTID [ 0 ] =
mdlref_TID0 ; knmsj142ui -> _mdlRefSfcnS = ( _mdlRefSfcnS ) ; if ( !
slIsRapidAcceleratorSimulating ( ) ) { slmrRunPluginEvent ( knmsj142ui ->
_mdlRefSfcnS , "soc_hwsw_stream_fpga_frame" ,
"START_OF_SIM_MODEL_MODELREF_ACCEL_EVENT" ) ; } ( void ) memset ( ( ( void *
) localB ) , 0 , sizeof ( lekejd12ef ) ) ; ( void ) memset ( ( void * )
localDW , 0 , sizeof ( ifowtm5kfm ) ) ;
soc_hwsw_stream_fpga_frame_InitializeDataMapInfo ( knmsj142ui , localDW ,
sysRanPtr , contextTid ) ; if ( ( rt_ParentMMI != ( NULL ) ) && (
rt_ChildPath != ( NULL ) ) ) { rtwCAPI_SetChildMMI ( * rt_ParentMMI ,
rt_ChildMMIIdx , & ( knmsj142ui -> DataMapInfo . mmi ) ) ; rtwCAPI_SetPath (
knmsj142ui -> DataMapInfo . mmi , rt_ChildPath ) ;
rtwCAPI_MMISetContStateStartIndex ( knmsj142ui -> DataMapInfo . mmi ,
rt_CSTATEIdx ) ; } } void mr_soc_hwsw_stream_fpga_frame_MdlInfoRegFcn (
SimStruct * mdlRefSfcnS , char_T * modelName , int_T * retVal ) { * retVal =
0 ; { boolean_T regSubmodelsMdlinfo = false ; ssGetRegSubmodelsMdlinfo (
mdlRefSfcnS , & regSubmodelsMdlinfo ) ; if ( regSubmodelsMdlinfo ) { } } *
retVal = 0 ; ssRegModelRefMdlInfo ( mdlRefSfcnS , modelName ,
rtMdlInfo_soc_hwsw_stream_fpga_frame , 45 ) ; * retVal = 1 ; } static void
mr_soc_hwsw_stream_fpga_frame_cacheDataAsMxArray ( mxArray * destArray ,
mwIndex i , int j , const void * srcData , size_t numBytes ) ; static void
mr_soc_hwsw_stream_fpga_frame_cacheDataAsMxArray ( mxArray * destArray ,
mwIndex i , int j , const void * srcData , size_t numBytes ) { mxArray *
newArray = mxCreateUninitNumericMatrix ( ( size_t ) 1 , numBytes ,
mxUINT8_CLASS , mxREAL ) ; memcpy ( ( uint8_T * ) mxGetData ( newArray ) , (
const uint8_T * ) srcData , numBytes ) ; mxSetFieldByNumber ( destArray , i ,
j , newArray ) ; } static void
mr_soc_hwsw_stream_fpga_frame_restoreDataFromMxArray ( void * destData ,
const mxArray * srcArray , mwIndex i , int j , size_t numBytes ) ; static
void mr_soc_hwsw_stream_fpga_frame_restoreDataFromMxArray ( void * destData ,
const mxArray * srcArray , mwIndex i , int j , size_t numBytes ) { memcpy ( (
uint8_T * ) destData , ( const uint8_T * ) mxGetData ( mxGetFieldByNumber (
srcArray , i , j ) ) , numBytes ) ; } static void
mr_soc_hwsw_stream_fpga_frame_cacheBitFieldToMxArray ( mxArray * destArray ,
mwIndex i , int j , uint_T bitVal ) ; static void
mr_soc_hwsw_stream_fpga_frame_cacheBitFieldToMxArray ( mxArray * destArray ,
mwIndex i , int j , uint_T bitVal ) { mxSetFieldByNumber ( destArray , i , j
, mxCreateDoubleScalar ( ( double ) bitVal ) ) ; } static uint_T
mr_soc_hwsw_stream_fpga_frame_extractBitFieldFromMxArray ( const mxArray *
srcArray , mwIndex i , int j , uint_T numBits ) ; static uint_T
mr_soc_hwsw_stream_fpga_frame_extractBitFieldFromMxArray ( const mxArray *
srcArray , mwIndex i , int j , uint_T numBits ) { const uint_T varVal = (
uint_T ) mxGetScalar ( mxGetFieldByNumber ( srcArray , i , j ) ) ; return
varVal & ( ( 1u << numBits ) - 1u ) ; } static void
mr_soc_hwsw_stream_fpga_frame_cacheDataToMxArrayWithOffset ( mxArray *
destArray , mwIndex i , int j , mwIndex offset , const void * srcData ,
size_t numBytes ) ; static void
mr_soc_hwsw_stream_fpga_frame_cacheDataToMxArrayWithOffset ( mxArray *
destArray , mwIndex i , int j , mwIndex offset , const void * srcData ,
size_t numBytes ) { uint8_T * varData = ( uint8_T * ) mxGetData (
mxGetFieldByNumber ( destArray , i , j ) ) ; memcpy ( ( uint8_T * ) & varData
[ offset * numBytes ] , ( const uint8_T * ) srcData , numBytes ) ; } static
void mr_soc_hwsw_stream_fpga_frame_restoreDataFromMxArrayWithOffset ( void *
destData , const mxArray * srcArray , mwIndex i , int j , mwIndex offset ,
size_t numBytes ) ; static void
mr_soc_hwsw_stream_fpga_frame_restoreDataFromMxArrayWithOffset ( void *
destData , const mxArray * srcArray , mwIndex i , int j , mwIndex offset ,
size_t numBytes ) { const uint8_T * varData = ( const uint8_T * ) mxGetData (
mxGetFieldByNumber ( srcArray , i , j ) ) ; memcpy ( ( uint8_T * ) destData ,
( const uint8_T * ) & varData [ offset * numBytes ] , numBytes ) ; } static
void mr_soc_hwsw_stream_fpga_frame_cacheBitFieldToCellArrayWithOffset (
mxArray * destArray , mwIndex i , int j , mwIndex offset , uint_T fieldVal )
; static void
mr_soc_hwsw_stream_fpga_frame_cacheBitFieldToCellArrayWithOffset ( mxArray *
destArray , mwIndex i , int j , mwIndex offset , uint_T fieldVal ) {
mxSetCell ( mxGetFieldByNumber ( destArray , i , j ) , offset ,
mxCreateDoubleScalar ( ( double ) fieldVal ) ) ; } static uint_T
mr_soc_hwsw_stream_fpga_frame_extractBitFieldFromCellArrayWithOffset ( const
mxArray * srcArray , mwIndex i , int j , mwIndex offset , uint_T numBits ) ;
static uint_T
mr_soc_hwsw_stream_fpga_frame_extractBitFieldFromCellArrayWithOffset ( const
mxArray * srcArray , mwIndex i , int j , mwIndex offset , uint_T numBits ) {
const uint_T fieldVal = ( uint_T ) mxGetScalar ( mxGetCell (
mxGetFieldByNumber ( srcArray , i , j ) , offset ) ) ; return fieldVal & ( (
1u << numBits ) - 1u ) ; } mxArray * mr_soc_hwsw_stream_fpga_frame_GetDWork (
const ggh1s0prkfp * mdlrefDW ) { static const char * ssDWFieldNames [ 3 ] = {
"rtb" , "rtdw" , "NULL->rtzce" , } ; mxArray * ssDW = mxCreateStructMatrix (
1 , 1 , 3 , ssDWFieldNames ) ;
mr_soc_hwsw_stream_fpga_frame_cacheDataAsMxArray ( ssDW , 0 , 0 , ( const
void * ) & ( mdlrefDW -> rtb ) , sizeof ( mdlrefDW -> rtb ) ) ; { static
const char * rtdwDataFieldNames [ 7 ] = { "mdlrefDW->rtdw.i2ue0cz1c2" ,
"mdlrefDW->rtdw.okclg0jl0i" , "mdlrefDW->rtdw.dxlsmhcir2" ,
"mdlrefDW->rtdw.axkdmzld1q" , "mdlrefDW->rtdw.jnswgswnxz" ,
"mdlrefDW->rtdw.migw3docpj" , "mdlrefDW->rtdw.gtheq5nfsd" , } ; mxArray *
rtdwData = mxCreateStructMatrix ( 1 , 1 , 7 , rtdwDataFieldNames ) ;
mr_soc_hwsw_stream_fpga_frame_cacheDataAsMxArray ( rtdwData , 0 , 0 , ( const
void * ) & ( mdlrefDW -> rtdw . i2ue0cz1c2 ) , sizeof ( mdlrefDW -> rtdw .
i2ue0cz1c2 ) ) ; mr_soc_hwsw_stream_fpga_frame_cacheDataAsMxArray ( rtdwData
, 0 , 1 , ( const void * ) & ( mdlrefDW -> rtdw . okclg0jl0i ) , sizeof (
mdlrefDW -> rtdw . okclg0jl0i ) ) ;
mr_soc_hwsw_stream_fpga_frame_cacheDataAsMxArray ( rtdwData , 0 , 2 , ( const
void * ) & ( mdlrefDW -> rtdw . dxlsmhcir2 ) , sizeof ( mdlrefDW -> rtdw .
dxlsmhcir2 ) ) ; mr_soc_hwsw_stream_fpga_frame_cacheDataAsMxArray ( rtdwData
, 0 , 3 , ( const void * ) & ( mdlrefDW -> rtdw . axkdmzld1q ) , sizeof (
mdlrefDW -> rtdw . axkdmzld1q ) ) ;
mr_soc_hwsw_stream_fpga_frame_cacheDataAsMxArray ( rtdwData , 0 , 4 , ( const
void * ) & ( mdlrefDW -> rtdw . jnswgswnxz ) , sizeof ( mdlrefDW -> rtdw .
jnswgswnxz ) ) ; mr_soc_hwsw_stream_fpga_frame_cacheDataAsMxArray ( rtdwData
, 0 , 5 , ( const void * ) & ( mdlrefDW -> rtdw . migw3docpj ) , sizeof (
mdlrefDW -> rtdw . migw3docpj ) ) ;
mr_soc_hwsw_stream_fpga_frame_cacheDataAsMxArray ( rtdwData , 0 , 6 , ( const
void * ) & ( mdlrefDW -> rtdw . gtheq5nfsd ) , sizeof ( mdlrefDW -> rtdw .
gtheq5nfsd ) ) ; mxSetFieldByNumber ( ssDW , 0 , 1 , rtdwData ) ; } ( void )
mdlrefDW ; return ssDW ; } void mr_soc_hwsw_stream_fpga_frame_SetDWork (
ggh1s0prkfp * mdlrefDW , const mxArray * ssDW ) { ( void ) ssDW ; ( void )
mdlrefDW ; mr_soc_hwsw_stream_fpga_frame_restoreDataFromMxArray ( ( void * )
& ( mdlrefDW -> rtb ) , ssDW , 0 , 0 , sizeof ( mdlrefDW -> rtb ) ) ; { const
mxArray * rtdwData = mxGetFieldByNumber ( ssDW , 0 , 1 ) ;
mr_soc_hwsw_stream_fpga_frame_restoreDataFromMxArray ( ( void * ) & (
mdlrefDW -> rtdw . i2ue0cz1c2 ) , rtdwData , 0 , 0 , sizeof ( mdlrefDW ->
rtdw . i2ue0cz1c2 ) ) ; mr_soc_hwsw_stream_fpga_frame_restoreDataFromMxArray
( ( void * ) & ( mdlrefDW -> rtdw . okclg0jl0i ) , rtdwData , 0 , 1 , sizeof
( mdlrefDW -> rtdw . okclg0jl0i ) ) ;
mr_soc_hwsw_stream_fpga_frame_restoreDataFromMxArray ( ( void * ) & (
mdlrefDW -> rtdw . dxlsmhcir2 ) , rtdwData , 0 , 2 , sizeof ( mdlrefDW ->
rtdw . dxlsmhcir2 ) ) ; mr_soc_hwsw_stream_fpga_frame_restoreDataFromMxArray
( ( void * ) & ( mdlrefDW -> rtdw . axkdmzld1q ) , rtdwData , 0 , 3 , sizeof
( mdlrefDW -> rtdw . axkdmzld1q ) ) ;
mr_soc_hwsw_stream_fpga_frame_restoreDataFromMxArray ( ( void * ) & (
mdlrefDW -> rtdw . jnswgswnxz ) , rtdwData , 0 , 4 , sizeof ( mdlrefDW ->
rtdw . jnswgswnxz ) ) ; mr_soc_hwsw_stream_fpga_frame_restoreDataFromMxArray
( ( void * ) & ( mdlrefDW -> rtdw . migw3docpj ) , rtdwData , 0 , 5 , sizeof
( mdlrefDW -> rtdw . migw3docpj ) ) ;
mr_soc_hwsw_stream_fpga_frame_restoreDataFromMxArray ( ( void * ) & (
mdlrefDW -> rtdw . gtheq5nfsd ) , rtdwData , 0 , 6 , sizeof ( mdlrefDW ->
rtdw . gtheq5nfsd ) ) ; } } void
mr_soc_hwsw_stream_fpga_frame_RegisterSimStateChecksum ( SimStruct * S ) {
const uint32_T chksum [ 4 ] = { 2800692158U , 3776705420U , 1764621532U ,
607731965U , } ; slmrModelRefRegisterSimStateChecksum ( S ,
"soc_hwsw_stream_fpga_frame" , & chksum [ 0 ] ) ; } mxArray *
mr_soc_hwsw_stream_fpga_frame_GetSimStateDisallowedBlocks ( ) { return NULL ;
}
#if defined(_MSC_VER)
#pragma warning(disable: 4505) //unreferenced local function has been removed
#endif
