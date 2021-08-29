# This is the Run ModelSim file list for 'DSPB_MMSE_dut_feature_extraction_SNR_Estimator'

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
vcom -93 -quiet $base_dir/DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator.vhd
vcom -93 -quiet $base_dir/DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator.vhd
vcom -93 -quiet $base_dir/DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator.vhd
vcom -93 -quiet $base_dir/DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator.vhd
source $base_dir/DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD.dspb.do
source $base_dir/DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB.dspb.do
source $base_dir/DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_feedback_delay.dspb.do
source $base_dir/DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale.dspb.do
