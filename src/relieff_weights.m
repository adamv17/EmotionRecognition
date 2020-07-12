function [weights,idxs] = relieff_weights(stats, labels, k)
%relieff_weights calculates the output of the relieff function
%   Runs the relieff function for each row in stats 
%   where labels are the subsequent classes 
%   and k is the number of nearest neighbors for which to calculate.   
rows = size(stats, 1);
weights = zeros(rows-1, 1);
idxs = zeros(rows-1, 1);
for stat = 1:rows-1
    s = stats(stat, :);
    [index, weight] = relieff(s(:), labels, k);
    weights(stat) = weight;
    idxs(stat) = index;
end

