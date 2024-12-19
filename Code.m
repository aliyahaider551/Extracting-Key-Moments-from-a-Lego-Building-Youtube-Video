vidF = 'SA.mp4';
videoReader = VideoReader(vidF);

[aud, fs] = audioread(vidF); 

fc = 100; 

[b, a] = butter(5, fc/(fs/2), 'high');


filAud = filter(b, a, aud);
 
[peaks, locs] = findpeaks(filAud, 'MinPeakHeight', 0.2, 'MinPeakDistance', 5000);


outVidF = fullfile(pwd, 'shortened_output_video.mp4');
outputVid = VideoWriter(outVidF, 'MPEG-4');
open(outputVid);



segDur = 0.2;
totalDu = 0; 

for i = 1:length(locs)
    
    timest = locs(i) / fs;
    
   
    videoReader.CurrentTime = max(0, timest - segDur / 2);
    
    frTC = floor(segDur * videoReader.FrameRate); 
    
    for j = 1:frTC
        if hasFrame(videoReader)
            frm = readFrame(videoReader);
            writeVideo(outputVid, frm); 
        else
            break; 
        end
    end
    
    totalDu = totalDu + segDur;
    if totalDu >= 60 
        break;
    end
end


close(outputVid);


startSample = round(locs(1) - fs * (segDur / 2));
endSample = startSample + round(totalDu * fs);       




startSample = max(1, startSample);
endSample = min(length(aud), endSample);

shortenedAudio = filAud(startSample:endSample); 



maxValue = max(abs(shortenedAudio));  


if maxValue > 1
    shortenedAudio = shortenedAudio / maxValue;  
end




audiowrite('shortened_audio.wav', shortenedAudio, fs);
