function output = RemoveAction(images)
    % Combines the stack of `images`, removing the differences
    % Input:    a cell array of images to combine
    % Output:   the image without action
    % Author:   Matt Moran
    
    % Inspired by https://stackoverflow.com/questions/5197597/how-to-average-over-a-cell-array-of-arrays
    
    % ActionShot and RemoveAction both use the same median image so we save
    %   it between functions
    global gMedianImage;
    
    % if the images are different sizes then we changed datasets
    % this will break if we change between multiple datasets with the same
    %   number of pixels (but this shouldn't be a problem for this task)
    if numel(gMedianImage) ~= numel(images{1})
        % convert images to a 4D matrix (from cell array)
        images = cat(4, images{:});

        % average matrix across the 4th dimension (stack of images)
        gMedianImage = median(images, 4);
    end
    
    % return the median image
    output = gMedianImage;
end
