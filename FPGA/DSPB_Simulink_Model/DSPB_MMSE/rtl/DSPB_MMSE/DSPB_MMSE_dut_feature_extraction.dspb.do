# This is the Run ModelSim file list for 'DSPB_MMSE_dut_feature_extraction'

if {![info exist use_own_safe_path] || ![string equal -nocase $use_own_safe_path true]} {
    vcom -93 -quiet $base_dir/DSPB_MMSE/DSPB_MMSE_dut_safe_path_msim.vhd
}
if {![info exist use_own_safe_path] || ![string equal -nocase $use_own_safe_path true]} {
    vcom -93 -quiet $base_dir/DSPB_MMSE/DSPB_MMSE_dut_safe_path_msim.vhd
}
if {![info exist use_own_safe_path] || ![string equal -nocase $use_own_safe_path true]} {
    vcom -93 -quiet $base_dir/DSPB_MMSE/DSPB_MMSE_dut_safe_path_msim.vhd
}
if {![info exist use_own_safe_path] || ![string equal -nocase $use_own_safe_path true]} {
    vcom -93 -quiet $base_dir/DSPB_MMSE/DSPB_MMSE_dut_safe_path_msim.vhd
}
vcom -93 -quiet $base_dir/DSPB_MMSE/DSPB_MMSE_dut_feature_extraction.vhd
vcom -93 -quiet $base_dir/DSPB_MMSE/DSPB_MMSE_dut_feature_extraction.vhd
vcom -93 -quiet $base_dir/DSPB_MMSE/DSPB_MMSE_dut_feature_extraction.vhd
vcom -93 -quiet $base_dir/DSPB_MMSE/DSPB_MMSE_dut_feature_extraction.vhd
source $base_dir/DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator.dspb.do
source $base_dir/DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_x.dspb.do
source $base_dir/DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x.dspb.do
