function output = ActionShot(images)
    numImages = length(images);
    [numY, numX, ~] = size(images{1});
    matrixNumX = numX * numImages;
    
    images = cell2mat(images);
    output = zeros(numY, numX, 3, 'uint8');

    for y = 1:numY
        for x = 1:numX
            [r, g, b] = MostDistantPixel(images(y, x:numX:matrixNumX, :));
            output(y, x, :) = [r g b];
        end
    end
end

