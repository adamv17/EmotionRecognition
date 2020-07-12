function [num_emotions] = number_emotions(emotions, labels)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
num_emotions = zeros(size(emotions, 2), 1);
for e = 1:numel(num_emotions)
    num_emotions(e, 1) = find(contains(labels, emotions(e)));
end

