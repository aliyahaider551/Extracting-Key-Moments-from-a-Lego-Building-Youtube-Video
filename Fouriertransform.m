[y, fs] = audioread('SA.mp4'); 

Y= fft(y);
f= (0:length(Y)-1)*fs/length(Y);
plot(f,abs(Y));
title('FT Signal Plot');
xlabel('Frequency (Hz)');
ylabel('Amplitude');