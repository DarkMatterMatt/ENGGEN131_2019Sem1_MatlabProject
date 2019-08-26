function output = ActionShot(images)
    global gMedianImage;
    
    [numY, numX, ~] = size(images{1});
    output = zeros(numY, numX, 3, 'uint8');
    
    % convert to a 4D matrix
    images = cat(4, images{:});
    
    images = double(images);
    medianImage = double(gMedianImage);

    for y = 1:numY
        for x = 1:numX
            p = images(y, x, :, :);
            m = medianImage(y, x, :);
            
            distances = sum((p-m).^2, 4);
            [~, index] = max(distances);
            output(y, x, :) = p(1, 1, :, index);
        end
    end
end

