function imageNames = GenerateImageList(dirName, fileType)
    % ImageNames = {'pesky01.png','pesky02.png','pesky03.png'};

    % any file that ends with fileType, e.g. *.png
    imagePattern = ['*.' fileType];

    % get all files that match the pattern
    images = dir(fullfile(dirName, imagePattern));

    % extract names
    imageNames = { images.name };
end

