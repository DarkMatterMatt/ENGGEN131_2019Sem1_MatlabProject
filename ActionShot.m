function output = ActionShot(images)
    global gMedianImage;
    
    [numY, numX, ~] = size(images{1});
    output = zeros(numY, numX, 3, 'uint8');
    
    images = cellfun( @(x)reshape(x,numY,1,numX,3) ,images,'un',0); % what does this do?
    images = permute(cell2mat(images), [2 1 3 4]);
    images = double(images);
    
    medianImage = reshape(gMedianImage, [1, numY, numX, 3]);
    medianImage = double(medianImage);

    for y = 1:numY
        for x = 1:numX
            p = images(:, y, x, :);
            m = medianImage(1, y, x, :);
            
            distances = sum((p-m).^2, 4);
            [~, index] = max(distances);
            output(y, x, :) = p(index, 1, 1, :);
        end
    end
end

