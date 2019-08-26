function [r, g, b] = MostDistantPixel(pixels)

    [mR, mG, mB] = MedianPixel(pixels);
    maxDistance = -1;
    
    for i=1:length(pixels)
        pixel = pixels(1, i, :);
        distance = PixelDistance([mR; mG; mB], pixel(:));
        
        % if this is the most distance pixel (so far), save it
        if distance > maxDistance
            maxDistance = distance;
            r = pixel(1);
            g = pixel(2);
            b = pixel(3);
        end
    end

end
