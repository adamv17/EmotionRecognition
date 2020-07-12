function [optimum, names] = weight_thr(stats, weight_matrix, thr, feature_names, stat_names, feature_idxs)
%weight_thr adds the stat and feature combinations that have a weight greater than
% the threshold value passed (thr)
%   weight_thr checks for each value in the weight matrix if it is greater
%   than the threshold value, and appends the corresponding vector from the
%   stats matrix to the optimum matrix. The names of the optimum stat,
%   feature combinations are returned in the vector names.
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

