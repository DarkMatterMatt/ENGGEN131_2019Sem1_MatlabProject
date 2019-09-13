function output = ActionShot(images)
    % Combines the stack of images, keeping the differences
    % Input:    a cell array of images to combine
    % Output:   the combined action shot image
    % Author:   Matt Moran

    % convert to a 4D matrix - looks like
    %   [Y, X, RGB, N] where N is the image number
    images = cat(4, images{:});
    [numY, numX, ~, ~] = size(images);

    % average matrix across the 4th dimension (stack of images)
    medianImage = median(images, 4);

    % find 'most different (from median)' pixels in the stack of images
    % int32 to avoid overflow
    subtractedImages = int32(images) - int32(medianImage);
    % calculate differences
    % sI.*sI is 64% faster than sI.^2
    distances = sum(subtractedImages .* subtractedImages, 3);
    % find indexes of 'most different' pixel
    [~, indexes] = max(distances, [], 4);

    % convert 2D matrix index into linear index
    % https://stackoverflow.com/questions/57649949/indexing-a-4d-array-with-a-2d-matrix-of-indicies
    % line 40: creates a 2D array (for a 2x4 image, ans=[1 3 5 7; 2 4 6 8]
    % line 41: creates a 3D (for a 2x4 image, ans=[0 8 16] in the 3rd dimension)
    % line 42: makes `indexes` zero-based, then multiplies it by the total number of pixels in each layer
    % line 40 + 41: added together to get a unique index for each color component for each pixel
    % line 40 + 41 + 42: added together to get the indexes for each pixel which we want to select
    numPixels = numY*numX;
    linearIndex = reshape(1:numPixels, numY, numX) ...
        + reshape((0:2)*numPixels, 1, 1, []) ...
        + (indexes-1)*numPixels*3;
    
    % select 'most different' pixels from images
    output = images(linearIndex);
end
