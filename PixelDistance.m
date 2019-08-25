function distance = PixelDistance(p, q)
    p = double(p);
    q = double(q);
    
    distance = (p(1) - q(1)) ^ 2 + (p(2) - q(2)) ^ 2 + (p(3) - q(3)) ^ 2;
end

