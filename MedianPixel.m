function [r, g, b] = MedianPixel(pixels)
    % Finds the average (median) pixel from a stack of pixels
    % Input:    an array of pixels to process
    % Outputs:  [r g b] = the average (median) pixel
    % Author:   Matt Moran
    
    % convert pixels to uint8 (they should be already)
    pixels = uint8(pixels);
    
    
    % the median of one pixel is itself
    if numel(pixels) == 3
        result = pixels;
    else
        % calculate the median pixel, automatically rounded because it's an integer
        result = median(pixels);
    end
	
	% split it into r, g, b components
    r = result(1);
    g = result(2);
    b = result(3);
end

