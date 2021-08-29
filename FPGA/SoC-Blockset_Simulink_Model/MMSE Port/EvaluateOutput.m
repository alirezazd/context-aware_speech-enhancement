%% Add
outputWav = single(zeros(((floor(length(overlapWavOut.Data) / frameSize)) / 2) * frameSize, 1));
overlapFrame = zeros(frameSize / 2, 1);
for i = 0 : (2 * (length(outputWav) / frameSize)) - 1
     outputWav((i * (frameSize / 2)) + 1 : ((i + 1) * (frameSize / 2))) = overlapWavOut.Data((i * frameSize) + 1 : (i * frameSize) + (frameSize / 2)) + overlapFrame;
     overlapFrame = overlapWavOut.Data((i * frameSize) + 1 + (frameSize/2) : (i * frameSize) + frameSize);
end
close;
if 7~=exist('output', 'dir')
    mkdir('output');
end
audiowrite('output\output.wav', outputWav, SF);
audiowrite('output\input.wav', inputWav(1: length(outputWav)), SF);
subplot(3,1,1);
plot(inputWav(1: length(outputWav)), 'r');
title('Noisy Input');
subplot(3,1,2);
plot(outputWav, 'g')
title('Enhanced Output');
subplot(3,1,3);
plot(inputWav(1: length(outputWav)), 'r');
hold on;
plot(outputWav, 'g')
title('Overlapped Plot');