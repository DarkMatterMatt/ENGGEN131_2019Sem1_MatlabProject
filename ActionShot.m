function output = ActionShot(images)
    global gMedianImage;
    
    % convert to a 4D matrix - looks like
    %   [Y, X, RGB, N] where N is the image number
    images = cat(4, images{:});
    [numY, numX, ~, ~] = size(images);
    
    subtractedImages = double(images) - double(gMedianImage);
    distances = sum(subtractedImages.^2, 3);
    [~, indexes] = max(distances, [], 4);
    
    % https://stackoverflow.com/questions/57649949/indexing-a-4d-array-with-a-2d-matrix-of-indicies
    linearIndex = reshape(1:numY*numX, numY, numX) ...
        + reshape((0:2)*numY*numX, 1, 1, []) ...
        + (indexes-1)*numY*numX*3;
    output = images(linearIndex);
end

