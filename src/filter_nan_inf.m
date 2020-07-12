function [stats] = filter_nan_inf(stats)
%filter_nan_inf filters the nan and inf values from stats
%   For each value in stats checks if it is nan or inf and if so turns it
%   into the number zero.
[rows, cols] = size(stats);
for r = 1:rows-1
    for cc = 1:cols
        if isnan(stats(r,cc)) || isinf(stats(r,cc))
            stats(r,cc) = 0;
        end
    end
end

