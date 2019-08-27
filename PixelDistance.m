function distance = PixelDistance(p, q)
    % Calculates the distance between two pixels
    % Input:    p - a pixel to compare
    %           q - the other pixel to compare
    % Output:   the distance between the two pixels
    % Author:   Matt Moran
    
    % increase size of pixels from uint8 to int32 (we only need to double
    %   size to uint16 but (p-m) could be negative, so use int32 instead)
    p = int32(p);
    q = int32(q);
    
    % calculate the distances between the pixels
    distance = sum((p-q).^2);
end

