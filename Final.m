videoF = 'shortened_output_video.mp4';



audioF = 'shortened_audio.wav';

outputF = 'output_video.avi';



vidRe = VideoReader(videoF);



[audiD, audioS] = audioread(audioF);



videoWri = vision.VideoFileWriter(outputF, ...
    'AudioInputPort', true, ...
    'FileFormat', 'AVI', ... 
    'FrameRate', vidRe.FrameRate);


audioSamplesPerFrame = round(audioS / vidRe.FrameRate);
audioIndex = 1;



while hasFrame(vidRe)
    

    vidFr = readFrame(vidRe);
    
   

    if audioIndex + audioSamplesPerFrame - 1 <= length(audiD)
        audioFrame = audiD(audioIndex:audioIndex + audioSamplesPerFrame - 1, :);
    else
        audioFrame = audiD(audioIndex:end, :); 

    end
    
   

    step(videoWri, vidFr, audioFrame);
    audioIndex = audioIndex + audioSamplesPerFrame;
end



release(videoWri);

