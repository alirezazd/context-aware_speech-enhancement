function [Output]= MBSS(wav_file, SF, Plot)
    %[wav_file, SF] = audioread(string(Input)); %Read input
    window_dur = 0.025;     %Window duration (Seconds)
    window_len = window_dur * SF;   %Window length (Samples)
    wav_file(ceil(length(wav_file)/window_len)*window_len) = 0; %Make total multiple of frame length
    %%Main()
    Output = [];
	Enhanced_Magnitude_Spectrum = [];
    Band_nu = 4; %Number of bands
    for frame_nu = 1 : window_len : length(wav_file)    %Main loop
        frame = wav_file(frame_nu : frame_nu + window_len - 1); %Extract processing frame
        frame(2^(ceil(log2(window_len)))) = 0;  %Zero pad
        frame = fft(frame,2^(ceil(log2(window_len))));  %FFT
        [Noisy_Mag_Spectrum, Noisy_Power_Spectrum, Phase] = FFT_Adapter(frame);  %Extract single sided manitude spectrum and phase 
        [Noise_Power_Spectrum] = A_Posteriori_SNR(Noisy_Mag_Spectrum); %Estimate Noise power Spectrum & A Posteriori SNR
        Enhanced_Magnitude_Spectrum = Enhance_MBSS(Noisy_Power_Spectrum, Noise_Power_Spectrum, Band_nu, SF); %Enhance
        tmp = ifft(IFFT_Adapter(Enhanced_Magnitude_Spectrum , Phase),2^(ceil(log2(window_len))));   %Convert to double sided spectrum and ifft
        Output = [Output; real(tmp(1:window_len))];
    end
    if (~exist('Plot','var') || Plot ~= false)  %Plot comparison (Defualt = true)
        figure('Name','MBSS','NumberTitle','off');
        plot(wav_file,'r'); hold on; plot(Output,'g');
        title('MBSS : Comparison between noisy input and enhanced output');
        xlabel('Samples');
        ylabel('Amplitude');
        legend({'Noisy input','Enhanced output'},'Location','northeast');
    end
end
function [mag, power, phase] = FFT_Adapter(x)
    mag = abs(x(1:length(x)/2)); %One Sided Magnitude Spectrum
    mag(1) = 2^-10; %Remove DC
    power = mag .* mag;
    phase = atan2(imag(x),real(x));
end
function [Noise_Power_Spectrum] = A_Posteriori_SNR(mag)
    a = 0.9;
    b = 1.2;
    g = 0.85;
    persistent A_Pos_SNR_init;
    persistent prev_noise_mag;
    if isempty(A_Pos_SNR_init)
        prev_noise_mag = mag;
        A_Pos_SNR_init = false;
    end
    delta_tmp = a * prev_noise_mag + (1-a) * mag;
    noise_mag = prev_noise_mag;
    for count = 1 : length(mag)
        if((prev_noise_mag(count) < (b * delta_tmp(count))) && (prev_noise_mag(count) > (g * delta_tmp(count))))
            noise_mag(count) = delta_tmp(count);
        end
    end
    Noise_Power_Spectrum = noise_mag .* noise_mag;
    prev_noise_mag = noise_mag;
end
function [complex_output] = IFFT_Adapter(mag,phase)
    mag = [mag; mag(1); flip(mag(2:end))];  %Convert to double sided spectrum
    complex_output = mag .* exp(1i .* phase);   %Mag&Phase to complex
end
function [Enhanced_Magnitude_Spectrum] = Enhance_MBSS(Noisy_Power_Spectrum, Noise_Power_Spectrum, Band_nu, SF)
    function [a] = oversubtraction(SNR)
        if SNR < -5
            a = 4.75;
        elseif SNR > 20
            a = 1;
        else
            a = 4-3/20*SNR;
        end  
    end
    function [S] = Band_weight(SF,fi)
        if fi < 1e3
            S = 1;
        elseif fi > SF/2 - 2e3
            S = 1.5;
        else
            S = 2.5;
        end
    end
    Enhanced_Magnitude_Spectrum = zeros(length(Noisy_Power_Spectrum),1);
    Enhanced_Power_Spectrum = zeros(length(Noisy_Power_Spectrum),1);
    Band_size = length(Noisy_Power_Spectrum)/Band_nu;
    noise_mask = 0.05;
    for count = 1:Band_nu
        N_Band = Noise_Power_Spectrum((count-1)*Band_size+1:count*Band_size);
        S_Band = Noisy_Power_Spectrum((count-1)*Band_size+1:count*Band_size);
        SNR = 10 * log10(sum(S_Band)/sum(N_Band));
        fi = SF/(2*length(Noisy_Power_Spectrum))*Band_size*count;
        Enhanced_Power_Spectrum((count-1)*Band_size+1:count*Band_size) = Noisy_Power_Spectrum((count-1)*Band_size+1:count*Band_size) - oversubtraction(SNR)* Band_weight(SF, fi) * Noise_Power_Spectrum((count-1)*Band_size+1:count*Band_size);
        Enhanced_Power_Spectrum((count-1)*Band_size+1:count*Band_size) = Enhanced_Power_Spectrum((count-1)*Band_size+1:count*Band_size) + noise_mask * Noisy_Power_Spectrum((count-1)*Band_size+1:count*Band_size);
        Enhanced_Magnitude_Spectrum((count-1)*Band_size+1:count*Band_size) = sqrt(Enhanced_Power_Spectrum((count-1)*Band_size+1:count*Band_size));
    end
end
