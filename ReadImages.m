function images = ReadImages(dirName, imageNames)
    % Returns a cell array of the opened images in the specified directory
    % Input:    dirName  - the name of the directory containing images
    %           imageNames - a cell array of image names to read
    % Output:   a cell array of images
    % Author:   Matt Moran

    % preallocate images cell array
    images = cell(1, length(imageNames));

    % determine the image paths
    imagePaths = fullfile(dirName, imageNames);

    % loop through all imageNames, opening each file
    for i = 1:length(imageNames)
        images{i} = imread(imagePaths{i});
    end
end
