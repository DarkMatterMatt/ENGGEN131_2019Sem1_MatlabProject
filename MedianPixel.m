function [r, g, b] = MedianPixel(pixels)
    % Finds the average (median) pixel from a stack of pixels
    % Input:    an array of pixels to process
    % Outputs:  [r g b] = the average (median) pixel
    % Author:   Matt Moran
    
    % convert pixels to uint8 (they should be already)
    pixels = uint8(pixels);
    
    % calculate the median pixel, and split it into r, g, b components
    % automatically rounded because it's an integer
    result = median(pixels);
    r = result(1);
    g = result(2);
    b = result(3);
end

