save('prev_run');   %backup previus workspace
clear all; %clear workspace
clc;
%% System Parameters
DSPB_MMSE_param.ClockRate = 50;           % The system clock rate in MHz
DSPB_MMSE_param.BusClock = 50.000000;
%% Design Parameters
%Input Params
DSPB_MMSE_param.FS = 9;    %log2(frame size)
DSPB_MMSE_param.FL = 25;  %frame length (ms)
DSPB_MMSE_param.SF = 16e3; %sampling frequency
DSPB_MMSE_param.SS = DSPB_MMSE_param.FL*(DSPB_MMSE_param.SF/1000); %signal size
%Input_Adapter Params
DSPB_MMSE_param.fft_type_strings = dspba.fft.mild_pruning(false, false, DSPB_MMSE_param.FS,fixdt(1, 16, 14), fixdt(1, 18, 16));
DSPB_MMSE_param.ifft_type_strings = dspba.fft.full_wordgrowth(true, false, DSPB_MMSE_param.FS,fixdt(1, 21, 19), fixdt(1, 23, 21));
%MMSE Params
in = load ('LUT0.mat','LUT_Z0');    %Scaled Modified bessel function of the first kind zeroth order lookup table
LUT_Z0 = in.LUT_Z0;
in = load ('LUT1.mat','LUT_Z1');
LUT_Z1 = in.LUT_Z1;                 %Scaled Modified bessel function of the
%SNR_Estimator Params
DSPB_MMSE_param.SNR_frame_size = 4 * DSPB_MMSE_param.SF;
DSPB_MMSE_param.max_SNR_dB = 20;
DSPB_MMSE_param.min_SNR_dB = 0;
%% Simulation Parameters
DSPB_MMSE_param.SampleTime  = 1;                    % One unit in Simulink simulation is one clock cycle
DSPB_MMSE_param.endTime     = 0;                 % How many simulation clock cycles

%% Stimulus Setup
[wav_file, DSPB_MMSE_param.SF] = audioread('m3rmenue.wav');
wav_file = wav_file';
%wav_file = v_addnoise(wav_file, DSPB_MMSE_param.SF, 10, 'k');
DSPB_MMSE_param.index = 1;
while(DSPB_MMSE_param.index < ((DSPB_MMSE_param.SF * length(wav_file)/DSPB_MMSE_param.SF) / DSPB_MMSE_param.SS) * 2)
    DSPB_MMSE_param.sampledata(DSPB_MMSE_param.index,:) = wav_file(((DSPB_MMSE_param.index - 1) * (DSPB_MMSE_param.SS / 2)) + 1 : (DSPB_MMSE_param.index + 1) * (DSPB_MMSE_param.SS / 2));
    DSPB_MMSE_param.index = DSPB_MMSE_param.index + 1;
end
%wav_file = wav_file * 1/max(abs(wav_file));
DSPB_MMSE_IO.bus_addr_in=[];
DSPB_MMSE_IO.bus_data_in=[];
DSPB_MMSE_IO.bus_wen=[];

%% Stimulus Write
for i = 1 : (((DSPB_MMSE_param.SF * length(wav_file)/DSPB_MMSE_param.SF) / DSPB_MMSE_param.SS) * 2) - 1
    DSPB_MMSE_param.index = 1;
    while(DSPB_MMSE_param.index <= DSPB_MMSE_param.SS)
        DSPB_MMSE_param.endTime = DSPB_MMSE_param.endTime + 1;
        DSPB_MMSE_IO.bus_addr_in(1,DSPB_MMSE_param.endTime) = DSPB_MMSE_param.index;
        DSPB_MMSE_IO.bus_data_in(1,DSPB_MMSE_param.endTime) = DSPB_MMSE_param.sampledata(i,DSPB_MMSE_param.index);
        DSPB_MMSE_IO.bus_wen(1,DSPB_MMSE_param.endTime)=1;
        DSPB_MMSE_param.index = DSPB_MMSE_param.index + 1;
    end
    DSPB_MMSE_param.endTime = DSPB_MMSE_param.endTime + 1;
    DSPB_MMSE_IO.bus_addr_in(1,DSPB_MMSE_param.endTime) = 0;
    DSPB_MMSE_IO.bus_data_in(1,DSPB_MMSE_param.endTime) = 1;
    DSPB_MMSE_IO.bus_wen(1,DSPB_MMSE_param.endTime)=1;
    DSPB_MMSE_param.endTime = DSPB_MMSE_param.endTime + 1200;
end