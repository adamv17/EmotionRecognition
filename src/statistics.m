function [stats] = statistics(features)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[~, nf] = size(features);
num_of_stats = 18;

stats = zeros(num_of_stats, nf);
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

    stats(:,f) = [Min; Max; Med; avg; s; ...
                    Max/avg; Max/Med;(s/avg)^2; ...
                        u_features(2:5); mean(u_features(1:4)); avg>thr; n./N];
end

