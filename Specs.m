[y, fs] = audioread('SA.mp4'); 



if size(y, 2) == 2
    y = mean(y, 2); 
end


N = length(y);



t = (0:N-1) / fs;



fft_audio = fft(y);       
fft_audio = fft_audio(1:N/2);  





f = (0:N/2-1) * (fs / N);



power_spectrum = abs(fft_audio).^2 / N;



energy_spectrum = cumsum(power_spectrum);


figure;



subplot(3, 1, 1);
plot(t, y);
title('Time-Domain Signal');
xlabel('Time (s)');
ylabel('Amplitude');



subplot(3, 1, 2);
plot(f, 10*log10(power_spectrum)); 

title('Power Spectrum');
xlabel('Frequency (Hz)');
ylabel('Power (dB)');



subplot(3, 1, 3);
plot(f, energy_spectrum);
title('Energy Spectrum');
xlabel('Frequency (Hz)');
ylabel('Energy');