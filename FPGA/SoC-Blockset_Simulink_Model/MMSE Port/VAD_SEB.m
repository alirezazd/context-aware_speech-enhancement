function [decision, SNR] = VAD_SEB(overlappedInput, SF, frameSize)
%UNTITLED2 Spectrum Energy Based Voice Activity Detection
%   Detailed explanation goes here
LFB = zeros(5, 1);
HFB = zeros(5, 1);
decision = zeros(length(overlappedInput)/frameSize, 1);
SNR = decision;
fftBinNum = 2^(ceil(log2(frameSize)));
fftBin = SF / fftBinNum;
H = hamming(frameSize);
overlappedInput = overlappedInput - mean(overlappedInput);
j = 5;
for i = 1:length(overlappedInput)/frameSize
    tmp = overlappedInput( (i - 1)*frameSize +1 : i * frameSize)  .* H;
    tmp = 20 * log10(abs(fft(tmp, fftBinNum)));
    tmp = tmp(1 : end/2);
    tmp(tmp < 0) = 0;
    LFB(j) = sum(tmp(1: 1500 / fftBin));
    HFB(j) = sum(tmp((1500 / fftBin) + 1 : end));
    if(i <= 4)
        decision(i) = mean(LFB(j : end)) - mean(HFB(j : end));
        SNR(i) = mean(LFB(j : end))/(mean(HFB(j : end)) + eps);
        j = j - 1;
    else
        decision(i) = mean(LFB) - mean(HFB);
        SNR(i) = mean(LFB) / (mean(HFB) + eps);
        LFB(2:end) = LFB(1:end-1);
        HFB(2:end) = HFB(1:end-1);
    end
end
    decision(decision > 0) = true;
    decision(decision <= 0) = false;
    decision = imresize(decision', [1 length(decision)*frameSize], 'nearest');
    plot(overlappedInput, 'b');
    hold on;
    plot(decision, 'g');
end

