function seconds = BenchmarkMovies()
    tic
    
    % setup variables
    filename = 'xylophone.mp4';
    firstFrame = 10;
    stepSize = 20;
    numFrames = 5;
    
    % open images
    frameNumbers = GenerateFrameList(firstFrame,stepSize,numFrames);
    images = ReadFrames(filename,frameNumbers);

    % Remove unwanted data from the sequence of images
    RemoveAction(images);

    % Create an action shot from the sequence of images
    ActionShot(images);
    
    seconds = toc;
end
