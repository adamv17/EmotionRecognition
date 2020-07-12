function [optimum, names] = weight_thr(stats, weight_matrix, thr, feature_names, stat_names, feature_idxs)
%UNTITLED % deletes the stat and feature combinations that have a weight less than
% the threshold value passed
%   Detailed explanation goes here
stat_num = size(weight_matrix, 1);
count_names = 1;
for ii = 1:stat_num
    for jj = 1:size(weight_matrix, 2)
        if weight_matrix(ii, jj) > thr
            optimum(count_names, :) = stats(stat_num * (jj - 1) + ii, :);
            for ind = 1:size(feature_idxs, 1)
                for i = 1:size(feature_idxs{ind, 1}, 2)
                    if (feature_idxs{ind, 1}(1, i) == jj)
                        names{1, count_names} = {feature_names{ind, 1}, stat_names(1, ii)};
                        count_names = count_names + 1;
                    end
                end
            end
        end
    end
end
optimum(count_names, :) = stats(end, :);
end

