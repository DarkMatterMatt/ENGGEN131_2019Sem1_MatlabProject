function imageNames = GenerateImageList(dirName, fileType)
    % Returns a cell array of the names of images in the specified directory
    % Input:    dirName  - the name of the directory containing images
    %           fileType - the image extension (e.g. 'png', or 'jpg')
    % Output:   a cell array of image names
    % Author:   Matt Moran

    % any file that ends with fileType, e.g. *.png
    imagePattern = ['*.' fileType];

    % get all files that match the pattern
    images = dir(fullfile(dirName, imagePattern));

    % extract names
    imageNames = { images.name };
end

