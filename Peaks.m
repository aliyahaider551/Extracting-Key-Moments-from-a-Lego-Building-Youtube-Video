[y, fs] = audioread('SA.mp4'); 


fc = 500;

[b, a] = butter(5, fc/(fs/2), 'high');
filAud = filter(b, a, y);


[pks, locs] = findpeaks(filAud , 'MinPeakHeight', 0.1, 'MinPeakDistance', fs/5);





time = (0:length(filAud )-1) / fs; 
figure;


plot(time, filAud ); 
hold on;
plot(time(locs), pks, 'ro');

xlabel('Time (s)');
ylabel('Amplitude');
title('Detected Peaks in the Audio Signal');
hold off;
