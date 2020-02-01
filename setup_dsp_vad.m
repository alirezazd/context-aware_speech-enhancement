clear all;
%% Configuration Parameters
dspb_vad.ClockRate = 50;
dspb_vad.ClockMargin = 0.0;
dspb_vad.SampleTime  = 1;
FL = 10; %frame_length in ms
FS = 512;   %frame size
[wav_file, SF] = wavread('m3rmenue.wav');
SZ = (FL/1000)*SF;
wav_file = wav_file';
wav_file = awgn(wav_file,5,'measured')  %add white noise, 5db SNR
wav_file(1,SF * ceil(length(wav_file)/SF)) = 0;
for i = 1:(SF * ceil(length(wav_file)/SF))/SZ
    dspb_vad.sampledata(i,:)= wav_file(((i-1)*SZ)+1:i*SZ);
    %dspb_vad.sampledata = dspb_vad.sampledata(i,:)' .* hamming(160);
end
dspb_vad.sampledata(1,512) = 0;
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
%dspb_vad.SimulationTime = 512;

%% Generate some input samples
%dspb_vad.sampledata = 256*sin(2*pi*440*(0:1/SF:0.025-1/SF));  %25ms sin wave
%dspb_vad.sampledata = (dspb_vad.sampledata'.*hamming(400)).' %apply hamming window
%dspb_vad.sampledata = dspb_vad.sampledata + 50*randn(1, length(dspb_vad.sampledata)); %add noise
%dspb_vad.sampledata(1,FS) = 0; %zero pad to 512 samples
%use example script to generate samples -> generate_fft_sample_data(dspb_vad.SimulationTime, dspb_vad.blockSize, [2.3, 0.1; 60, 0.1; 950.2, 0.1],0.2);

dspb_vad.bus_addr_in=[];
dspb_vad.bus_data_in=[];
dspb_vad.bus_wen=[];
sync_irq = 1;
count =0;
%% Write FFT Data
for i = 1:(SF * ceil(length(wav_file)/SF))/SZ
    dspb_vad.point = 0;
    while(dspb_vad.point < 512)
    count = count + 1;
    dspb_vad.bus_addr_in(1,count) = 1;
    dspb_vad.point = dspb_vad.point + 1;
    dspb_vad.bus_data_in(1,count) = dspb_vad.sampledata(i,dspb_vad.point);
    dspb_vad.bus_wen(1,count)=1;
    count = count + 1;
    dspb_vad.bus_addr_in(1,count) = 0;
    dspb_vad.bus_data_in(1,count) = sync_irq;
    sync_irq = ~sync_irq;
    dspb_vad.bus_wen(1,count)=1;
    end
    %% Wait for data to get ready (600 for bitrevrsecore & 512 for fft)
    count = count + 600;
end
%plot(frame_number/1000,'r')
%plot(time_sample,'b')
%plot(decision/10,'g')
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