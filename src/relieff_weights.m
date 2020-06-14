function [weights,idxs] = relieff_weights(stats, labels, k)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
rows = size(stats, 1);
weights = zeros(rows-1, 1);
idxs = zeros(rows-1, 1);
for stat = 1:rows-1
    s = stats(stat, :);
    [index, weight] = relieff(s(:), labels, k);
    weights(stat) = weight;
    idxs(stat) = index;
end

