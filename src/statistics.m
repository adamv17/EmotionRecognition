function [stats, names] = statistics(features, stats2extract)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
num_of_stats = size(stats2extract, 2);
[~, nf] = size(features);

stats = zeros(num_of_stats, nf);
allNames = ["Min", "Max", "Med", "Avg", "Std", "Max/Avg", "Max/Med", ...
    "(s/avg)^2", "formant(2)", "formant(3)", "formant(4)", "formant(5)", ...
    "formant mean", "avg>thr", ">avg", ">0.1avg", ">5*avg", ">0.4"];

names = allNames(stats2extract);
for f = 1:nf
    ft = features(:,f);
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
        n(ii,1) = sum(ft > el(ii));
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
        u_features(2:5); ... 
        mean(u_features(1:4)); ...
        avg>thr; ...
        n./N; ...
        ];
    
    stats(:, f) = stats_vec(stats2extract);
end

