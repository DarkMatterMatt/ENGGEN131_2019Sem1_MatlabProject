% Author: Matt Moran
testFunctionName = 'GenerateFrameList';

% run test cases
assert(isequal(GenerateFrameList(1,4,3),   [1 5 9]));
assert(isequal(GenerateFrameList(10,20,4), [10 30 50 70]));
assert(isequal(GenerateFrameList(20,1,5),  [20 21 22 23 24]));

disp([testFunctionName ' passed all tests']);