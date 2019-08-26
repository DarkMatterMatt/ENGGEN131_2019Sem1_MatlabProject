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
    % Display the resulting image and write it to a file
    RemoveAction(images);

    % Create an action shot from the sequence of images
    % Display the resulting composite image and write it to a file
    ActionShot(images);
    
    seconds = toc;
end
