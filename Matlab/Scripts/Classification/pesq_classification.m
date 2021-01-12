clc;
clear all;
clean_names = {'m1ltenae', 'm2rmenam', 'm3rmaiue', 'f1lspeae', 'f2rmenum', 'f3lsenue'};
noise_types = {'machinegun', 'leopard', 'destroyerops', 'babble', 'factory1', 'buccaneer1', 'volvo', 'f16', 'destroyerengine', 'factory2', 'hfchannel', 'buccaneer2', 'm109', 'pink', 'white'};
selected_noise_types = {'white', 'hfchannel', 'buccaneer2', 'volvo', 'factory2'};
mmse = zeros(5, 5);
mbss= zeros(5, 5);
for i = 6 : 6
    for j = 1 : length(selected_noise_types)
        for k = 0 : 5 : 20
            mbss(j, (k/5)+1) = (mbss(j, (k/5)+1) + pesq_measure(16e3, ['Clean_wav\', cell2mat(clean_names(i)), '.wav'], ['Enhanced_wav\MBSS\', cell2mat(clean_names(i)), '_', cell2mat(selected_noise_types(j)), '_', num2str(k), 'dB.wav']));
            mmse(j, (k/5)+1) = (mmse(j, (k/5)+1) + pesq_measure(16e3, ['Clean_wav\', cell2mat(clean_names(i)), '.wav'], ['Enhanced_wav\MMSE\', cell2mat(clean_names(i)), '_', cell2mat(selected_noise_types(j)), '_', num2str(k), 'dB.wav']));
            clc;
            disp([num2str((i-1) * 100 / 6),'%']);
            disp((mmse)/i);
            disp((mbss)/i);
            disp((mmse-mbss)/i);
        end
    end
end