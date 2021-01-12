clc;
NoiseList = dir("*.mat");
WavList = ["m3rmaiue", "m2rmenam", "m1ltenae", "f3lsenue", "f2rmenum", "f1lspeae"];
NoiseList={NoiseList.name};   %Extract file names of noises
SF.S = 16e3;   %Signal sampling freq
SF.N = 19.98e3; %Noise sampling freq
max_SNR = 20;
loudness_target = -23;
SSNR.FS = 2^16/16e3;
counter = 0;
mkdir("Clean_wav");
%mkdir("Clean_mat");
mkdir("Noisy_wav");
%mkdir("Noisy_mat");
%mkdir("Enhanced_wav");
%mkdir("Enhanced_mat");
for w = 1 : 6
    [wav_file, SF.S] = audioread(WavList(w) + ".wav"); %Read input signal and update sampling frequency
    if length(wav_file) > SF.S * 32
        wav_file = wav_file(1 : SF.S * 32);
    end
    [loudness, LRA] = integratedLoudness(wav_file, SF.S);
    gaindB = loudness_target - loudness;
    gain = 10^(gaindB/20);
    wav_file = wav_file .* gain;
    FileName = "Clean_mat\" + "input" + w;
    WavName = "Clean_wav\" +  WavList(w) + ".wav";
    audiowrite(WavName, wav_file, SF.S);
    %save(FileName, "tmp");
    for n = 1 : 15
        Noise = load(NoiseList{n});
        NoiseName = NoiseList;
        NoiseName = convertCharsToStrings(NoiseName);
        tmp = char(NoiseName(n));
        tmp = tmp(3 : end-4);
        NoiseName(n) = string(tmp);        
        for p = 0 : 5 : max_SNR
            tmp = v_addnoise(wav_file, SF.S, p, 'wbk', Noise.(NoiseName(n)), SF.N);   %Add noise
            %FileName = "Noisy_mat\" + "input" + w + "_" + NoiseName(n) + "_" + string(p) + "dB";
            WavName = "Noisy_wav\" + WavList(w) + "_" + NoiseName(n) + "_" + string(p) + "dB" + ".wav";
            audiowrite(WavName, tmp, SF.S);
            %save(FileName, "tmp");
            %clear MBSS;clear MMSE;
            %MMSE_out = MMSE(tmp, SF.S, false);
            %MBSS_out = MBSS(tmp, SF.S, false);
            %FileName = "Enhanced_mat\" + "input" + w + "_MMSE_" +  NoiseName(n) + "_" + string(p) + "dB";
            %WavName = "Enhanced_wav\" + "input" + w + "_MMSE_" +  NoiseName(n) + "_" + string(p) + "dB" + ".wav";
            %audiowrite(WavName, MMSE_out, SF.S);
            %save(FileName, "MMSE_out");
            %FileName = "Enhanced_mat\" + "input" + w + "_MBSS_" +  NoiseName(n) + "_" + string(p) + "dB";
            %WavName = "Enhanced_wav\" + "input" + w + "_MBSS_" +  NoiseName(n) + "_" + string(p) + "dB" + ".wav";
            %audiowrite(WavName, MBSS_out, SF.S);
            %save(FileName, "MBSS_out");
            clc;
            counter = counter + 1;
            disp((counter/(6 * 15 * 5)) * 100 + "% Completed.");
        end
    end
end

