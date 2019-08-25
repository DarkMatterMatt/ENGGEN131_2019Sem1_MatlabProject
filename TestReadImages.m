% Author: Matt Moran
testFunctionName = 'ReadImages';

% run test cases

% check that the 'tiny' directory exists
if exist('tiny', 'dir')
    % check that GenerateImageList finds all the files in 'tiny'
    assert(isequal(ReadImages('tiny', {'tiny1.png' 'tiny2.png'}), ...
        { imread('tiny\tiny1.png') imread('tiny\tiny2.png') }));
else
    disp("Warning: Couldn't find the folder called 'tiny'");
end

disp([testFunctionName ' passed all tests']);