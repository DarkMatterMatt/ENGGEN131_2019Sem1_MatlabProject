function seconds = BenchmarkImages()
    tic
    
    % setup variables
    dirname = 'lunar';
    fileType = 'jpg';
    
    % open images
    imageNames = GenerateImageList(dirname, fileType);
    images = ReadImages(dirname, imageNames);

    % Remove unwanted data from the sequence of images
    RemoveAction(images);

    % Create an action shot from the sequence of images
    ActionShot(images);
    
    seconds = toc;
end
