clc;
FileList = dir("*.mat");
FileList={FileList.name};   %Extract file names of noises
noise_types = {'machinegun', 'leopard', 'destroyerops', 'babble', 'factory1', 'buccaneer1', 'volvo', 'f16', 'destroyerengine', 'factory2', 'hfchannel', 'buccaneer2', 'm109', 'pink', 'white'};
SF.S = 16e3;   %Signal sampling freq
SF.N = 19.98e3; %Noise sampling freq
max_SNR = 20;
precision = 1;
loudness_target = -23;
SSNR.FS = 2^16/16e3;	%Segmental SNR Frame size
%%Batch add noises to input
count0 = zeros(length(FileList), (max_SNR+1)/precision);
count1 = zeros(length(FileList), (max_SNR+1)/precision);
Train_dataset = zeros(length(FileList), (max_SNR+1)/precision);
hold on;
for f = 1 : 20
    stde = [];
    clean_name = ['Clean_wav\input', num2str(f), '.wav']; 
    clean = audioread(clean_name);
    for k = 1 : length(FileList)    %Noise sources
        counter = 0;
        for j = 0 : precision : max_SNR     %SNR levels
            mmse_name = ['Enhanced_wav\input', num2str(f), '_MMSE_',  cell2mat(noise_types(k)), '_', num2str(j), 'dB', '.wav'];
            mbss_name = ['Enhanced_wav\input', num2str(f), '_MBSS_',  cell2mat(noise_types(k)), '_', num2str(j), 'dB', '.wav'];
            clear functions;
            MMSE_out = audioread(mmse_name);
            MBSS_out = audioread(mbss_name);
            [seg0, glo0] = v_snrseg(MMSE_out, clean, SF.S, 'wz', SSNR.FS);
            [seg1, glo1] = v_snrseg(MBSS_out, clean, SF.S, 'wz', SSNR.FS);
            if (seg0 > seg1)
                count0(k, counter + 1) = count0(k, counter + 1) + 1;
            else
                count1(k, counter + 1) = count1(k, counter + 1) + 1;
            end
            if  count0(k, counter + 1) >= count1(k, counter + 1)
                Train_dataset(k, counter + 1) = 0;
                scatter(counter, k-1, "filled", "MarkerFaceColor", [1 0.5 0]);
                pause(0.001);
            else
                Train_dataset(k, counter + 1) = 1;
                scatter(counter, k-1, "filled", "MarkerFaceColor", [0 0 1]);
                pause(0.001);
            end
            clc;
            disp("Processing " + "input"+string(f)+".wav");
            disp("Noise: " + string(k-1) + " " + string(noise_types(k)) + "    " + j + "dB");
            disp("MBSS SSNR:    " + seg1);
            disp("MMSE SSNR:    " + seg0);
            counter = counter + 1;
        end
    end
end