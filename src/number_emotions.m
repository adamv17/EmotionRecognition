function [num_emotions] = number_emotions(emotions, labels)
%number_emotions numbers emotions based on the given labels
%   Turns each emotion into a number from 1 - #labels
num_emotions = zeros(size(emotions, 2), 1);
for e = 1:numel(num_emotions)
    num_emotions(e, 1) = find(contains(labels, emotions(e)));
end

