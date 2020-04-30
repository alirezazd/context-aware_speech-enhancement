%% DSPB_MMSE_param - DSPBA Design Parameters Start
clear all; %clear workspace
%% System Parameters
DSPB_MMSE_param.ChanCount = 1;                        % How many real data channels
DSPB_MMSE_param.ClockRate     = 50.000000;           % The system clock rate in MHz
DSPB_MMSE_param.SampleRate    = 50.000000;            % The data rate per channel in MSps (mega-samples per second)
DSPB_MMSE_param.ClockMargin   = 0.0;                  % Adjust the pipelining effort

%% Data Parameters
DSPB_MMSE_param.FS = 9;    %log2(frame size)
DSPB_MMSE_param.FL = 25;  %frame length (ms)
DSPB_MMSE_param.SF = 16e3; %sampling frequency
DSPB_MMSE_param.SS = DSPB_MMSE_param.FL*(DSPB_MMSE_param.SF/1000); %signal size
%% Simulation Parameters
DSPB_MMSE_param.SampleTime  = 1;                    % One unit in Simulink simulation is one clock cycle
DSPB_MMSE_param.endTime     = 0;                 % How many simulation clock cycles
%% Stimulus data setup
[wav_file, DSPB_MMSE_param.SF] = audioread('m3rmenue.wav');
wav_file = wav_file';
wav_file(1,DSPB_MMSE_param.SF * ceil(length(wav_file)/DSPB_MMSE_param.SF)) = 0; %round input array size to nearest integer second
wav_file = awgn(wav_file,5,'measured');  %add white noise, 5db SNR
for i = 1:(DSPB_MMSE_param.SF * ceil(length(wav_file)/DSPB_MMSE_param.SF))/DSPB_MMSE_param.SS %create aaray of DSPB_MMSE_param.FL ms
    DSPB_MMSE_param.sampledata(i,:)= wav_file(((i-1)*DSPB_MMSE_param.SS)+1:i*DSPB_MMSE_param.SS);
end
DSPB_MMSE_param.sampledata(1,2^DSPB_MMSE_param.FS) = 0; %Zero pad to form an input with desired frame size
%% DSPBA Design Parameters End

%% Write input samples
%initialize input
DSPB_MMSE_IO.bus_addr_in=[];
DSPB_MMSE_IO.bus_data_in=[];
DSPB_MMSE_IO.bus_wen=[];
%write frames
for i = 1 : (DSPB_MMSE_param.SF * ceil(length(wav_file)/DSPB_MMSE_param.SF))/DSPB_MMSE_param.SS
    DSPB_MMSE_param.index = 1;
    while(DSPB_MMSE_param.index <= 2^(DSPB_MMSE_param.FS))
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
    DSPB_MMSE_param.endTime = DSPB_MMSE_param.endTime + 1100;
end