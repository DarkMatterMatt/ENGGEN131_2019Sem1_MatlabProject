function output = ActionShot(images)
    global gMedianImage;
    
    [numY, numX, ~] = size(images{1});
    output = zeros(numY, numX, 3, 'uint8');
    
    % convert to a 4D matrix - looks like
    %   [Y, X, RGB, N] where N is the image number
    images = cat(4, images{:});
    
    images = double(images);
    medianImage = double(gMedianImage);
    
    subtractedImages = images - medianImage;
    distances = sum(subtractedImages.^2, 3);
    
    [~, indexes] = max(distances, [], 4);

    for y = 1:numY
        for x = 1:numX
            output(y, x, :) = images(y, x, :, indexes(y, x));
        end
    end
end

