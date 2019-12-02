function sampledata = generate_fft_sample_data(points,blocksize,dataspec,noiselevel)
% generate_fft_sample_data(points,FFTsize,spec,noise) where spec is
% an array, where each row gives the frequency and amplitude of a signal.
% For example: generate_fft_sample_data(10000,1024,[2.3,0.1; 60,0.1; 950.2,0.1], 0.2);
    sampletimes = (0:points-1) / blocksize;

    sampledata = noiselevel * exp(2j * pi * rand(1,points));
    for index = 1:size(dataspec,1)
        freq = dataspec(index,1);
        amp  = dataspec(index,2);
        sampledata = sampledata + amp * exp(2j * pi * freq * sampletimes);
    end
end
