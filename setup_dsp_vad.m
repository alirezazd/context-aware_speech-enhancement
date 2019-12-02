%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File: setup_demo_fpfft.m
% Description: Script to set variables in Matlab workspace to configure
% demo_fpfft
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Configuration Parameters
dspb_vad.ClockRate = 50;
dspb_vad.ClockMargin = 0.0;
dspb_vad.SampleTime  = 1;
temp = [1:10];


%% FFT data
dspb_vad.IFFT = false;
dspb_vad.bit_reversed = true;

dspb_vad.N = 9;
dspb_vad.subchannels = 1; % must be a power of 2
dspb_vad.FFTsize = 2^dspb_vad.N;
dspb_vad.blockSize = dspb_vad.subchannels * dspb_vad.FFTsize;

%% Data Type Specification
dspb_vad.input_type = dspba.namedVPFloat('single');

%% The pruning strategy:
% We don't prune floating-point types, but we need to supply
% the type string array anyway. This works:
dspb_vad.type_strings = ...
   dspba.fft.all_float(dspb_vad.N,dspb_vad.input_type);

%% 5 sets of input should provide 3 sets of output, allowing for latency in both the BitReverse buffer and the FFT itself.
dspb_vad.SimulationTime = 512;

%% Generate some input samples
dspb_vad.sampledata = ...
    generate_fft_sample_data(...
        dspb_vad.SimulationTime, ...
        dspb_vad.blockSize, ...
        [2.3, 0.1; 60, 0.1; 950.2, 0.1], ...
        0.2);

dspb_vad.bus_addr_in=[];
dspb_vad.bus_data_in = [];
dspb_vad.bus_wen = [];
sync_irq = 1;
dspb_vad.point = 0;
count =0;

%% Write FFT Data
while(dspb_vad.point < 512)
    count = count + 1;
    dspb_vad.bus_addr_in(1,count) = 1;
    dspb_vad.point = dspb_vad.point + 1;
    dspb_vad.bus_data_in(1,count) = abs(dspb_vad.sampledata(1,dspb_vad.point));
    dspb_vad.bus_wen(1,count)=1;
    count = count + 1;
    dspb_vad.bus_addr_in(1,count) = 0;
    dspb_vad.bus_data_in(1,count) = sync_irq;
    sync_irq = ~sync_irq;
    dspb_vad.bus_wen(1,count)=1;
end
%% Wait for data to get ready (600 for bitrevrsecore & 512 for fft)
count = count + 600 + 511;
sync_irq = 1;
while(dspb_vad.point >= 1)
    count = count + 1;
    dspb_vad.bus_addr_in(1,count) = 3;
    dspb_vad.bus_data_in(1,count) = sync_irq;
    dspb_vad.bus_wen(1,count) = 1;
    count = count + 1;
    sync_irq = ~sync_irq;
    dspb_vad.bus_addr_in(1,count) = 4;
    dspb_vad.point = dspb_vad.point -1;
end