function frameNumbers = GenerateFrameList(firstFrame, stepSize, numFrames)
    % Generates an array of frame indexes
    % Input:    firstFrame  - the index of the first frame to capture
    %           stepSize    - how many frames to skip before the next frame
    %           numFrames   - the number of frames to create
    % Output:   an array of frame indexes
    % Author:   Matt Moran

    % calculate the index of the last frame we will return
    lastFrame = firstFrame + stepSize * (numFrames - 1);

    % create a list using the colon operator
    frameNumbers = firstFrame:stepSize:lastFrame;
end
