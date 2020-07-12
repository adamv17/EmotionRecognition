function [stats,stat_names] = extract_stats(features, stats2extract, num_emotions, num_of_features)
%extract_stats extracts statistics for each column of features 
%   Extracts the corresponding stats and returns a matrix of stast with the
%   correct labels in the last row.
num_of_stats = size(stats2extract, 2);
stats = zeros(1 + num_of_stats * num_of_features, size(features, 2));
for f = 1:size(features, 2)
    seg_features = features(:,f);
    [st, stat_names] = statistics(seg_features, stats2extract, num_of_features);
    stats(1:end-1, f) = st(:);
    stats(end, f) = num_emotions(f,1);
end

