function distance = PixelDistance(p, q)
    % Calculates the squared distance between two pixels
    % Input:    p - a pixel to compare
    %           q - the other pixel to compare
    % Output:   the distance between the two pixels
    % Author:   Matt Moran

    % increase size of pixels from uint8 to int32 (we only need to double
    %   size to uint16 but (p-q) could be negative, so use int32 instead)
    difference = int32(p) - int32(q);

    % calculate the distances between the pixels
    % d.*d is ~30% faster than d.^2 for this small array
    distance = sum(difference .* difference);
end
