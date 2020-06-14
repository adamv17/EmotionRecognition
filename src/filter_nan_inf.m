function [stats] = filter_nan_inf(stats)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
[rows, cols] = size(stats);
for r = 1:rows-1
    for cc = 1:cols
        if isnan(stats(r,cc)) || isinf(stats(r,cc))
            stats(r,cc) = 0;
        end
    end
end

