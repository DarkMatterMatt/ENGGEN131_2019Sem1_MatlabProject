function output = RemoveAction(images)
    % https://stackoverflow.com/questions/5197597/how-to-average-over-a-cell-array-of-arrays

    % get the number of dimensions for your arrays
    dim = ndims(images{1});
    
    % convert to a (dim+1)-dimensional matrix
    M = cat(dim+1, images{:});
    
    % average matrix
    output = uint8(median(M, dim+1));
    
    % save so ActionShot can use result
    global medianImage;
    medianImage = output;
end
