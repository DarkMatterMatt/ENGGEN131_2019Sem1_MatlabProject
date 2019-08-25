function output = ActionShot(images)
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
            [r, g, b] = MostDistantPixel(pixels);
            output(y, x, :) = [r g b];
        end
    end
end

