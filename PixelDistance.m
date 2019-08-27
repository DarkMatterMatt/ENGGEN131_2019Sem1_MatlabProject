function distance = PixelDistance(p, q)
    % Calculates the distance between two pixels
    % Input:    p - a pixel to compare
    %           q - the other pixel to compare
    % Output:   the distance between the two pixels
    % Author:   Matt Moran
    p = double(p);
    q = double(q);
    
    distance = (p(1) - q(1)) ^ 2 + (p(2) - q(2)) ^ 2 + (p(3) - q(3)) ^ 2;
end

