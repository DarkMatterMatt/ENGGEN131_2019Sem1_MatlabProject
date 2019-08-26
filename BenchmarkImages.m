function seconds = BenchmarkImages()
    tic
    
    % setup variables
    dirname = 'lunar';
    fileType = 'jpg';
    
    % open images
    imageNames = GenerateImageList(dirname, fileType);
    images = ReadImages(dirname, imageNames);

    % Remove unwanted data from the sequence of images
    % Display the resulting image and write it to a file
    RemoveAction(images);

    % Create an action shot from the sequence of images
    % Display the resulting composite image and write it to a file
    ActionShot(images);
    
    seconds = toc;
end
