function [avgSecsImages, avgSecsMovies] = RunBenchmarks()
    iterations = 3;
    
    % run once to remove setup costs
    BenchmarkImages();
    
    % repeat `iterations` times
    secs = zeros(1, iterations);
    for i=1:iterations
        secs(i) = BenchmarkImages();
    end
    
    % average time to process images
    avgSecsImages = mean(secs);
    disp(['Completed image benchmark in ' num2str(avgSecsImages) ' seconds']);

    % run once to remove setup costs
    BenchmarkMovies();
    
    % repeat `iterations` times
    secs = zeros(1, iterations);
    for i=1:iterations
        secs(i) = BenchmarkMovies();
    end
    
    % average time to process movies
    avgSecsMovies = mean(secs);
    disp(['Completed movie benchmark in ' num2str(avgSecsMovies) ' seconds']);

end
