% Author: Matt Moran
testFunctionName = 'ActionShot';

% setup variables
dirname = 'pesky';
fileType = 'png';

% open images
imageNames = GenerateImageList(dirname, fileType);
images = ReadImages(dirname, imageNames);

% Create an action shot from the sequence of images
assert(isequal(ActionShot(images), imread('TestPeskyActionShot.png')));

disp([testFunctionName ' passed all tests']);