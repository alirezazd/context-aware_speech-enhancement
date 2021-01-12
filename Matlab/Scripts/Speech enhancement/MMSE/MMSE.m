function [Output]= MMSE(wav_file, SF, Plot)
    %[wav_file, SF] = audioread(string(Input)); %Read input
    window_dur = 0.025;     %Window duration (Seconds)
    window_len = window_dur * SF;   %Window length (Samples)
    wav_file(ceil(length(wav_file)/window_len)*window_len) = 0; %Make total multiple of frame length
    %%Main()
    Enhanced_Magnitude_Spectrum = [];
    Output = [];
    for frame_nu = 1 : window_len : length(wav_file)    %Main loop
        frame = wav_file(frame_nu : frame_nu + window_len - 1); %Extract processing frame
        frame(2^(ceil(log2(window_len)))) = 0;  %Zero pad
        frame = fft(frame,2^(ceil(log2(window_len))));  %FFT
        [Noisy_Magnitude_Spectrum, Phase] = FFT_Adapter(frame);  %Extract single sided manitude spectrum and phase 
        [A_Pos_SNR , Noise_Power_Spectrum] = A_Posteriori_SNR(Noisy_Magnitude_Spectrum); %Estimate Noise power Spectrum & A Posteriori SNR
        [A_Pri_SNR] = A_Priori_SNR(Enhanced_Magnitude_Spectrum, Noise_Power_Spectrum, A_Pos_SNR); %Estimate A priori SNR
        [Enhanced_Magnitude_Spectrum] = Enhance_MMSE(A_Pos_SNR, A_Pri_SNR, Noisy_Magnitude_Spectrum); %Enhance
        tmp = ifft(IFFT_Adapter(Enhanced_Magnitude_Spectrum , Phase),2^(ceil(log2(window_len))));   %Convert to double sided spectrum and ifft
        Output = [Output; real(tmp(1:window_len))];
    end
    if (~exist('Plot','var') || Plot ~= false)  %Plot comparison (Defualt = true)
        figure('Name','MMSE','NumberTitle','off');
        plot(wav_file,'r'); hold on; plot(Output,'g');
        title('MMSE : Comparison between noisy input and enhanced output');
        xlabel('Samples');
        ylabel('Amplitude');
        legend({'Noisy input','Enhanced output'},'Location','northeast');
    end
end
function [mag, phase] = FFT_Adapter(x)
    mag = abs(x(1:length(x)/2)); %One Sided Magnitude Spectrum
    mag(1) = 2^-10; %Remove DC
    phase = atan2(imag(x),real(x));
end
function [A_Pos_SNR , Noise_Power_Spectrum] = A_Posteriori_SNR(mag)
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
    for i = 1 : length(mag)
        if((prev_noise_mag(i) < (b * delta_tmp(i))) && (prev_noise_mag(i) > (g * delta_tmp(i))))
            noise_mag(i) = delta_tmp(i);
        end
    end
    Noise_Power_Spectrum = noise_mag .* noise_mag;
    A_Pos_SNR = (mag .* mag) ./ Noise_Power_Spectrum;
    prev_noise_mag = noise_mag;
end
function [complex_output] = IFFT_Adapter(mag,phase)
    mag = [mag; mag(1); flip(mag(2:end))];  %Convert to double sided spectrum
    complex_output = mag .* exp(1i .* phase);   %Mag&Phase to complex
end
function [A_Pri_SNR] = A_Priori_SNR(Enhanced_Magnitude_Spectrum, Noise_Power_Spectrum, A_Posteriori_SNR )
    a = 0.98;
    persistent A_Pri_SNR_init;
    persistent Prev_Noise_Power_Spectrum;
    if isempty(A_Pri_SNR_init)
        Enhanced_Magnitude_Spectrum = ones(length(A_Posteriori_SNR),1);
        Prev_Noise_Power_Spectrum = ones(length(A_Posteriori_SNR),1);
        A_Pri_SNR_init = false;
    end
    Enhanced_Power_Spectrum = Enhanced_Magnitude_Spectrum .* Enhanced_Magnitude_Spectrum;
    A_Pri_SNR = zeros(length(A_Posteriori_SNR),1);
    for i = 1 : length(Enhanced_Power_Spectrum)
        A_Pri_SNR(i) = max((a * Enhanced_Power_Spectrum(i)/Prev_Noise_Power_Spectrum(i))+((1-a)*(A_Posteriori_SNR(i) - 1)),0.032);
    end
    Prev_Noise_Power_Spectrum = Noise_Power_Spectrum;
end
function [Enhanced_Magnitude_Spectrum] = Enhance_MMSE(A_Pos_SNR, A_Pri_SNR, Noisy_Magnitude_Spectrum)
    in = load ('LUT0.mat','LUT_Z0');    %Scaled Modified bessel function of the first kind zeroth order lookup table
    LUT_Z0 = in.LUT_Z0;
    in = load ('LUT1.mat','LUT_Z1');
    LUT_Z1 = in.LUT_Z1;                 %Scaled Modified bessel function of the first kind first order lookup table
    function [Res] = besseli0(Input)
        if(Input > 14)        %When to calculate and when to use LUT
            Res = 1/sqrt(Input*2*pi);
        else
            Res = LUT_Z0(round(((2^7 - 1) / 15)*Input)+1);    %Convert input to LUT index and return the output
        end
    end

    function [Res] = besseli1(Input)
        if(Input > 29)     %When to calculate and when to use LUT
            Res = 1/sqrt(Input*2*pi);
        else
            Res = LUT_Z1(round(((2^8 - 1) / 30)*Input)+1);     %Convert input to LUT index and return the output
        end
    end
    V_k = A_Pos_SNR .* (A_Pri_SNR ./ (1 + A_Pri_SNR));
    Enhanced_Magnitude_Spectrum = zeros(length(Noisy_Magnitude_Spectrum),1);
    for i = 1 : length(Noisy_Magnitude_Spectrum)
        %Enhanced_Magnitude_Spectrum(i) = ((sqrt(pi*V_k(i)))/(2*A_Pos_SNR(i))) * (((1 + V_k(i)) * besseli0(V_k(i)/2)) + (V_k(i) * besseli1(V_k(i)/2))) * Noisy_Magnitude_Spectrum(i);
        if(V_k(i)/2) <= 29
        end
        Enhanced_Magnitude_Spectrum(i) = ((sqrt(pi*V_k(i)))/(2*A_Pos_SNR(i))) * (((1 + V_k(i)) * besseli(0, V_k(i)/2, 1)) + (V_k(i) * besseli(1, V_k(i)/2, 1))) * Noisy_Magnitude_Spectrum(i);
    end
end
