%% Hardware Params
% Memory
numBuffers = 4;
burstLen = 100;

%% Design Params
SF = 16e3;
frameDur = 0.025;
frameSize = frameDur * SF;
noiseSNR = 5;
quantizationBits = 20;

%% Initialization Routine
load('LUT0.mat');
load('LUT1.mat');
LUT_Z0 = single(LUT_Z0);
LUT_Z1 = single(LUT_Z1);
[inputWav, wavSF] = audioread("speech.wav"); %Read wav file
inputWav = resample(inputWav, SF, wavSF);   %Resample input
inputWav = single(v_addnoise(inputWav, SF, noiseSNR, 'k')); %Add noise
inputWav = inputWav(1 : floor(length(inputWav) / frameSize)* frameSize); %Make total multiple of frame length
% Overlap
overlapWavIn = single(zeros((2 * length(inputWav) - frameSize),1));
tmp = overlapWavIn;
for i = 0 : (2 * (length(inputWav) / frameSize)) - 2
    overlapWavIn((i * frameSize) + 1 : (i + 1) * frameSize) = inputWav(i * (frameSize / 2) + 1 : (i + 2) * (frameSize / 2));
    
end
%% Model Params
sampleTime = 1e-7;
stopTime = 5.0450e-04 * (2 * (length(inputWav) / frameSize)) * 0.2;

