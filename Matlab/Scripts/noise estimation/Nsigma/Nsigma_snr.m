function [estimated_snr] = Nsigma_snr(input_signal,FS)
%UNTITLED Summary of this function goes here
%   Estimate SNR in dB using N-Sigma algorithm whithin time domain.
%FS -> Frame size
%input_signal -> input signal array
noise_th = 0.1;
N = 4.2;
prev_snr = 0;
input_signal(ceil(length(input_signal)/FS) * FS) = 0;	%Round number of samples
estimated_snr = zeros(length(input_signal)/FS, 1);	%Allocate output array
for i = 1 : length(input_signal)/FS	%Loop over input signal
    tmp = input_signal(((i -1) * FS) + 1: i*FS);	%Extract frame
    tmp = abs(tmp) .^ 0.7;
    noise = tmp(tmp <= noise_th); %if tmp <= noise threshold then it's a noise sample
    signal = tmp(tmp > noise_th);	%if tmp > nosie threshold then it's a speech sample
	noise_std = std(noise);	%noise samples standard deviation
    signal_std = std(signal); %speech samples standard deviation
    snr = signal_std / noise_std;
    snr_db = ceil((100/7) * log10(snr));
    estimated_snr(i) = snr_db;
    noise_th = N * noise_std;
end
