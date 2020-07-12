function [stats, names] = statistics(features, stats2extract, num_of_features)
%statistics calculates the statistics of the feature vector and returns the
%stats specified in stats2extract, as well as the names of the stats
%returned.
%   statstics calculates 18 stats on each feature vector:
%   Min - the min value 
%   Max - the max value 
%   Med - the median value 
%   Avg - the average value
%   Std - the standard deviation from the average value
%   Max/Avg - the max value divided by the average value
%   Max/Med - the max value divided by the median
%   (s/avg)^2 - the standard deviation divided by the avg squared
%   formant(2:5) - the 2nd to 5th largest values in the vector
%   formant mean - the 1st to 4th largest values
%   avg>thr - if the average value is greater than a threshold value
%   >avg - the number of values greater than the average divided by the
%   total number of values
%   >0.1avg - the number of values greater than 0.1 of the average divided by the
%   total number of values
%   >5*avg - the number of values greater than 5 times the average divided by the
%   total number of values
%   >0.4 - the number of values greater than the 0.4 divided by the
%   total number of values

num_of_stats = size(stats2extract, 2);

stats = zeros(num_of_stats, num_of_features);
allNames = ["Min", "Max", "Med", "Avg", "Std", "Max/Avg", "Max/Med", ...
    "(s/avg)^2", "formant(2)", "formant(3)", "formant(4)", "formant(5)", ...
    "formant mean", "avg>thr", ">avg", ">0.1avg", ">5*avg", ">0.4"];

names = allNames(stats2extract);
for f = 1:num_of_features
    tmp_ft = features(f, 1);
    ft = tmp_ft{1,1};
    N = numel(ft);

    s = std(ft);
    avg = mean(ft);
    Min = min(ft);
    Max = max(ft);
    Med = median(ft);

    u_features = unique(ft);
    thr = 10e-6;

    el = [avg, 0.1*avg, 5*avg, 0.4];
    n = zeros(4,1);
    for ii = 1:numel(n)
        n(ii,1) = sum(ft > el(1, ii));
    end

    stats_vec = [
        Min; ... 
        Max; ...
        Med; ...
        avg; ...
        s; ...
        Max/avg; ...
        Max/Med; ....
        (s/avg)^2; ...
        u_features(2); ... 
        u_features(3); ... 
        u_features(4); ... 
        u_features(5); ... 
        mean(u_features(1:4)); ...
        avg>thr; ...
        n(1)./N; ...
        n(2)./N; ...
        n(3)./N; ...
        n(4)./N; ...
        ];
    
    stats(:, f) = stats_vec(stats2extract);
end

