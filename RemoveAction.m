function output = RemoveAction(images)
    % https://stackoverflow.com/questions/5197597/how-to-average-over-a-cell-array-of-arrays
    
    % convert to a 4D matrix
    images = cat(4, images{:});
    
    % average matrix across the 4th dimension (stack of images)
    output = median(images, 4);
    
    % save so ActionShot can use result
    global gMedianImage;
    gMedianImage = output;
    
    % images are of the type uint8
    output = uint8(output);
end
