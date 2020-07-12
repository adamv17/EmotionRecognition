function [incorrect] = find_incorrect_indices(yfit, num_emotions, test_idxs)
%find_incorrect_indices finds the incorrect indices of yfit
%   finds the yfit values that do not match the num_emotions values and
%   returns their indices.
incorrect = find((yfit == num_emotions(test_idxs, :)) == 0);
end

