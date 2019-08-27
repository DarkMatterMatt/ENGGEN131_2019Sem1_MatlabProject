function distance = PixelDistance(p, q)
    % Calculates the distance between two pixels
    % Input:    p - a pixel to compare
    %           q - the other pixel to compare
    % Output:   the distance between the two pixels
    % Author:   Matt Moran
    p = int32(p);
    q = int32(q);
    
    distance = sum((p-q).^2);
end

