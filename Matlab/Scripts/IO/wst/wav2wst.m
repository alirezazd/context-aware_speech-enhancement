function [] = wav2wst(wav_name, dtype, fraction_width)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
wav_file = audioread(wav_name);
fid = fopen([wav_name(1:end-3), 'wst'], 'w');
fwrite(fid, round(wav_file .* (2 ^ fraction_width)), dtype);
fclose(fid);
end

