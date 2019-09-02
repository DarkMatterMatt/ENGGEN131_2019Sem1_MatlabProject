function frames = ReadFrames(fileName, frameNumbers)
    % Takes a a movie file name, 1D array of frames to fetch, 
    % and returns a cell array of RGB images.
    % Author: Peter Bier. Modified by Matt Moran

    % Create a video object for the video
    vidObj = VideoReader(fileName);

    % preallocate the cell array
    frames = cell(1, length(frameNumbers));

    % Iterate through the frame numbers and store the specified frames
    for i=1:length(frameNumbers)
        % jump to the frame we want to read
        vidObj.CurrentTime = (frameNumbers(i)-1) / vidObj.FrameRate;
        frames{i} = readFrame(vidObj);
    end
    
end

