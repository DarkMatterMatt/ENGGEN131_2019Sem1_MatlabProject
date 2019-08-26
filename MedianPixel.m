function [r, g, b] = MedianPixel(pixels)
    result = round(median(pixels));
    r = result(:, :, 1);
    g = result(:, :, 2);
    b = result(:, :, 3);
end

