function [r, g, b] = MostDistantPixel(pixels)
    % Finds the most distant (most different) pixel from a stack of pixels
    % Input:    an array of pixels to process
    % Outputs:  r - the red component of the most distant pixel
    %           g - the green component of the most distant pixel
    %           b - the blue component of the most distant pixel
    % Author:   Matt Moran
    
    % increase size of pixels from uint8 to int32 (we only need to double
    %   size to uint16 but (p-m) could be negative, so use int32 instead)
    p = int32(pixels);
    m = median(p); % this implicitly rounds because it's an integer
    
    % calculate the distances between each pixel and the median
    distances = sum((p-m).^2, 3);
    
    % find the index of the most distant pixel
    [~, index] = max(distances);
    
    % fetch the most distant pixel
    mostDistantPixel = p(1, index, :);
    
    % split it into r, g, b components
    r = mostDistantPixel(1);
    g = mostDistantPixel(2);
    b = mostDistantPixel(3);
end
