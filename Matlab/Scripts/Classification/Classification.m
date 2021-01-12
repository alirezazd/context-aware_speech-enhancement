clc;
clear all;
c = dir('Clean_wav\*.wav');
clean_names = {'m1ltenae', 'm2rmenam', 'm3rmaiue', 'f1lspeae', 'f2rmenum', 'f3lsenue'};
noise_types = {'machinegun', 'leopard', 'destroyerops', 'babble', 'factory1', 'buccaneer1', 'volvo', 'f16', 'destroyerengine', 'factory2', 'hfchannel', 'buccaneer2', 'm109', 'pink', 'white'};
mmse = zeros(15, 5);
mbss= zeros(15, 5);
for i = 1 : 6
    r = audioread(['Clean_wav\', cell2mat(clean_names(i)), '.wav']);
    for j = 1 : length(noise_types)
        for k = 0 : 5 : 20
            s0 = audioread(['Enhanced_wav\MBSS\', cell2mat(clean_names(i)), '_', cell2mat(noise_types(j)), '_', num2str(k), 'dB.wav']);
            s1 = audioread(['Enhanced_wav\MMSE\', cell2mat(clean_names(i)), '_', cell2mat(noise_types(j)), '_', num2str(k), 'dB.wav']);
            [seg0, glo0] = v_snrseg(s0, r, 16e3, 'wz', 0.025);
            [seg1, glo1] = v_snrseg(s1, r, 16e3, 'wz', 0.025);
            mbss(j, (k/5)+1) = ((glo0 - k) + mbss(j, (k/5)+1));
            mmse(j, (k/5)+1) = ((glo1 - k) + mmse(j, (k/5)+1));
            clc;
            disp([num2str((i-1) * 100 / 6),'%']);
        end
    end
end