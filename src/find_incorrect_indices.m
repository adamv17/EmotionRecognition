function [incorrect] = find_incorrect_indices(yfit, num_emotions, test_idxs)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
incorrect = find((yfit == num_emotions(test_idxs, :)) == 0);
end

