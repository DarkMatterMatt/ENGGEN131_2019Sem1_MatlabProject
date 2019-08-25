% Author: Matt Moran
testFunctionName = 'GenerateImageList';

% run test cases

% check that the 'tiny' directory exists
if exist('tiny', 'dir')
    % check that GenerateImageList finds all the files in 'tiny'
    assert(isequal(GenerateImageList('tiny', 'png'), ...
        {'tiny1.png' 'tiny2.png' 'tiny3.png' 'tiny4.png'}));
    % check that GenerateImageList doesn't find any non-matching files in 'tiny'
    assert(isequal(GenerateImageList('tiny', 'xyz'), {}));
else
    disp("Warning: Couldn't find the folder called 'tiny'");
end

% check that the 'pesky' directory exists
if exist('pesky', 'dir')
    % check that GenerateImageList finds all the files in 'pesky'
    assert(isequal(GenerateImageList('pesky', 'png'), ...
        {'pesky01.png' 'pesky02.png' 'pesky03.png'}));
    % check that GenerateImageList doesn't find any non-matching files in 'pesky'
    assert(isequal(GenerateImageList('pesky', 'xyz'), {}));
else
    disp("Warning: Couldn't find the folder called 'pesky'");
end

% check that the 'lunar' directory exists
if exist('lunar', 'dir')
    % check that GenerateImageList finds all the files in 'lunar'
    assert(isequal(GenerateImageList('lunar', 'jpg'), ...
        {'lunar1.jpg' 'lunar2.jpg' 'lunar3.jpg' 'lunar4.jpg' 'lunar5.jpg' 'lunar6.jpg' 'lunar7.jpg'}));
    % check that GenerateImageList doesn't find any non-matching files in 'lunar'
    assert(isequal(GenerateImageList('lunar', 'xyz'), {}));
else
    disp("Warning: Couldn't find the folder called 'lunar'");
end

disp([testFunctionName ' passed all tests']);