function [r, g, b] = MostDistantPixel(pixels)
    p = double(pixels);
    m = round(median(p));

    distances = sum((p-m).^2, 3);
    [~, index] = max(distances);
    mostDistantPixel = p(:, index, :);
    
    r = mostDistantPixel(1);
    g = mostDistantPixel(2);
    b = mostDistantPixel(3);
end
