function seconds = BenchmarkPixelDistance()
    % test case using 3D array
    c(:,:,1) = [192; 66;  65];
    c(:,:,2) = [50;  73;  192];
    c(:,:,3) = [135; 203; 135];
    
    tic
    % loop 500k times
    for i=1:5e5
        PixelDistance(c(1,1,:), c(3,1,:));
    end
    seconds = toc;
end
