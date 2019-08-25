function images = ReadImages(dirName,imageNames)
    % preallocate images cell array
    images = cell(1, length(imageNames));
    
    % loop through all imageNames, opening each file
    for i = 1:length(imageNames)
        imageName = imageNames{i};
        images{i} = imread(fullfile(dirName, imageName));
    end

end

