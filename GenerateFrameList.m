% Generates a list of frame indexes
% Author: Matt Moran
% Input: 
function frameNumbers = GenerateFrameList(firstFrame,stepSize,numFrames)
    % calculate the index of the last frame we will return
    lastFrame = firstFrame + stepSize * (numFrames - 1);
    
    % create a list using the colon operator
    frameNumbers = firstFrame:stepSize:lastFrame;
end

