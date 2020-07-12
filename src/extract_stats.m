function [stats,stat_names] = extract_stats(features, stats2extract, num_emotions, num_of_features)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
num_of_stats = size(stats2extract, 2);
stats = zeros(1 + num_of_stats * num_of_features, size(features, 2));
for f = 1:size(features, 2)
    seg_features = features(:,f);
    [st, stat_names] = statistics(seg_features, stats2extract, num_of_features);
    stats(1:end-1, f) = st(:);
    stats(end, f) = num_emotions(f,1);
end

