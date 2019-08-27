function output = ActionShot(images)
    % convert to a 4D matrix - looks like
    %   [Y, X, RGB, N] where N is the image number
    images = cat(4, images{:});
    [numY, numX, ~, ~] = size(images);
    
    % ActionShot and RemoveAction both use the same median image so we save
    %   it between functions
    global gMedianImage;
    
    % if the images are different sizes then we changed datasets
    % this will break if we change between multiple datasets with the same
    %   number of pixels (but this shouldn't be a problem for this task)
    if numel(gMedianImage) ~= numel(images)
        % average matrix across the 4th dimension (stack of images)
        gMedianImage = median(images, 4);
    end
    
    % find 'most different (from median)' pixels in the stack of images
    subtractedImages = double(images) - double(gMedianImage);
    distances = sum(subtractedImages.^2, 3); % calculate differences
    [~, indexes] = max(distances, [], 4);    % find indexes of 'most different' pixel
    
    % convert 2D matrix index into linear index
    % https://stackoverflow.com/questions/57649949/indexing-a-4d-array-with-a-2d-matrix-of-indicies
    numPixels = numY*numX;
    linearIndex = reshape(1:numPixels, numY, numX) ...
        + reshape((0:2)*numPixels, 1, 1, []) ...
        + (indexes-1)*numPixels*3;
    
    % combine 'most different' pixels from images
    output = images(linearIndex);
end

