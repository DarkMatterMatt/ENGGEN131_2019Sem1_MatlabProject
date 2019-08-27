function [r, g, b] = MostDistantPixel(pixels)
    % Finds the most distant (most different) pixel from a stack of pixels
    % Input:    an array of pixels to process
    % Output:   [r g b] = the most distant (most different) pixel
    % Author:   Matt Moran
    
    p = double(pixels);
    m = round(median(p));

    distances = sum((p-m).^2, 3);
    [~, index] = max(distances);
    mostDistantPixel = p(:, index, :);
    
    r = mostDistantPixel(1);
    g = mostDistantPixel(2);
    b = mostDistantPixel(3);
end
