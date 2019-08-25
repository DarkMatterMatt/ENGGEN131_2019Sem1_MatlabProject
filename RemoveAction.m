function output = RemoveAction(images)
    numImages = length(images); 
    [numY, numX, ~] = size(images{1});
    
    output = zeros(numY, numX, 3, 'uint8');

    for y = 1:numY
        for x = 1:numX
            pixels = zeros(1, numImages, 3);
            for i=1:numImages
                image = images{i};
                pixels(1, i, :) = image(y, x, :);
            end
            [r, b, g] = MedianPixel(pixels);
            output(y, x, :) = [r, b, g];
        end
    end
end

