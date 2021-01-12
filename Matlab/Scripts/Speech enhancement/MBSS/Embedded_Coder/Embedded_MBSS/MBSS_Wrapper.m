function [Output] = MBSS_Wrapper(path)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[wav_file, sf] = audioread(path);
Output = Embedded_MBSS(wav_file,sf);
end

