% Author: Matt Moran
testFunctionName = 'RemoveAction';

% setup variables
dirname = 'pesky';
fileType = 'png';

% open images
imageNames = GenerateImageList(dirname, fileType);
images = ReadImages(dirname, imageNames);

% Create an action shot from the sequence of images
assert(isequal(RemoveAction(images), imread('peskyActionRemoved.png')));

disp([testFunctionName ' passed all tests']);