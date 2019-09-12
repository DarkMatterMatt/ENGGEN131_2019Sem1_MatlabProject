function output = RemoveAction(images)
    % Combines the stack of images, removing the differences
    % Input:    a cell array of images to combine
    % Output:   the image without action
    % Author:   Matt Moran
    
    % Inspired by https://stackoverflow.com/questions/5197597/how-to-average-over-a-cell-array-of-arrays

    % convert images to a 4D matrix (from cell array)
    images = cat(4, images{:});

    % average matrix across the 4th dimension (stack of images)
    output = median(images, 4);
end
