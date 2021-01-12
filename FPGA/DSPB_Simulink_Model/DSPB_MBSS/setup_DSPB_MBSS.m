save('prev_run');   %backup previus workspace
clear all; %clear workspace
clc;
tmp = [];
%% System Parameters
DSPB_MBSS_param.ClockRate = 50;           % The system clock rate in MHz
DSPB_MBSS_param.BusClock = 50.000000;
%% Design Parameters
%Input Params
DSPB_MBSS_param.FS = 9;    %log2(frame size)
DSPB_MBSS_param.FL = 25;  %frame length (ms)
DSPB_MBSS_param.SF = 16e3; %sampling frequency
DSPB_MBSS_param.SS = DSPB_MBSS_param.FL*(DSPB_MBSS_param.SF/1000); %signal size
%Input_Adapter Params
DSPB_MBSS_param.fft_type_strings = dspba.fft.mild_pruning(false, false, DSPB_MBSS_param.FS,fixdt(1, 16, 14), fixdt(1, 18, 16));
DSPB_MBSS_param.ifft_type_strings = dspba.fft.full_wordgrowth(true, false, DSPB_MBSS_param.FS,fixdt(1, 21, 19), fixdt(1, 23, 21));
%MBSS Params
DSPB_MBSS_param.NB = 4;    %number of bands
%SNR_Estimator Params
DSPB_MBSS_param.SNR_frame_size = 4 * DSPB_MBSS_param.SF;
DSPB_MBSS_param.max_SNR_dB = 20;
DSPB_MBSS_param.min_SNR_dB = 0;
%% Simulation Parameters
DSPB_MBSS_param.SampleTime  = 1;                    % One unit in Simulink simulation is one clock cycle 
DSPB_MBSS_param.endTime     = 0;                 % How many simulation clock cycles

%% Stimulus Setup
[wav_file, DSPB_MBSS_param.SF] = audioread('m3rmenue.wav');
wav_file = wav_file';
%wav_file = v_addnoise(wav_file, DSPB_MBSS_param.SF, 10, 'k');
DSPB_MBSS_param.index = 1;
while(DSPB_MBSS_param.index < ((DSPB_MBSS_param.SF * length(wav_file)/DSPB_MBSS_param.SF) / DSPB_MBSS_param.SS) * 2)
    DSPB_MBSS_param.sampledata(DSPB_MBSS_param.index,:) = wav_file(((DSPB_MBSS_param.index - 1) * (DSPB_MBSS_param.SS / 2)) + 1 : (DSPB_MBSS_param.index + 1) * (DSPB_MBSS_param.SS / 2));
    DSPB_MBSS_param.index = DSPB_MBSS_param.index + 1;
end
%wav_file = wav_file * 1/max(abs(wav_file));
DSPB_MBSS_IO.bus_addr_in=[];
DSPB_MBSS_IO.bus_data_in=[];
DSPB_MBSS_IO.bus_wen=[];

%% Stimulus Write
for i = 1 : (((DSPB_MBSS_param.SF * length(wav_file)/DSPB_MBSS_param.SF) / DSPB_MBSS_param.SS) * 2) - 1
    DSPB_MBSS_param.index = 1;
    while(DSPB_MBSS_param.index <= DSPB_MBSS_param.SS)
        DSPB_MBSS_param.endTime = DSPB_MBSS_param.endTime + 1;
        DSPB_MBSS_IO.bus_addr_in(1,DSPB_MBSS_param.endTime) = DSPB_MBSS_param.index;
        DSPB_MBSS_IO.bus_data_in(1,DSPB_MBSS_param.endTime) = DSPB_MBSS_param.sampledata(i,DSPB_MBSS_param.index);
        DSPB_MBSS_IO.bus_wen(1,DSPB_MBSS_param.endTime)=1;
        DSPB_MBSS_param.index = DSPB_MBSS_param.index + 1;
    end
    DSPB_MBSS_param.endTime = DSPB_MBSS_param.endTime + 1;
    DSPB_MBSS_IO.bus_addr_in(1,DSPB_MBSS_param.endTime) = 0;
    DSPB_MBSS_IO.bus_data_in(1,DSPB_MBSS_param.endTime) = 1;
    DSPB_MBSS_IO.bus_wen(1,DSPB_MBSS_param.endTime)=1;
    DSPB_MBSS_param.endTime = DSPB_MBSS_param.endTime + 1200;
end