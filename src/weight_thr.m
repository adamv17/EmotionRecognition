function [stats] = weight_thr(stats, weight_matrix, thr)
%UNTITLED % deletes the stat and feature combinations that have a weight less than
% the threshold value passed
%   Detailed explanation goes here
stat_num = size(weight_matrix, 1);
for ii = 1:stat_num
    for jj = 1:size(weight_matrix, 2)
        if weight_matrix(ii, jj) < thr
            stats(stat_num * (jj - 1) + ii, :) = nan;
        end
    end
end
stats(any(isnan(stats), 2), :) = [];
end

