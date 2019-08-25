function [r, g, b] = MedianPixel(pixels)

    r = round(median(pixels(:, :, 1)));
    g = round(median(pixels(:, :, 2)));
    b = round(median(pixels(:, :, 3)));

end

