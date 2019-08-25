% Author: Matt Moran
testFunctionName = 'PixelDistance';

% run test cases
assert(PixelDistance([0 0 0], [3 4 0]) == 25);
assert(PixelDistance([0; 0; 0], [3; 4; 0]) == 25);
assert(PixelDistance(uint8([0 0 0]), uint8([3 4 0])) == 25);
assert(PixelDistance([5 5 5], [5 5 5]) == 0);
assert(PixelDistance([0 0 0], [255 255 255]) == 195075);

% test case using 3D array
c(:,:,1) = [192; 66;  65];
c(:,:,2) = [50;  73;  192];
c(:,:,3) = [135; 203; 135];
assert(PixelDistance(c(1,1,:), c(3,1,:)) == 36293);
clear c;

disp([testFunctionName ' passed all tests']);