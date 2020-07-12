function [names] = num2name(nums, emotions)
%num2name converts numbers to emotion names 
%   Converts each number from 1-#emotions to the corresponding
%   emotion name.
names = cell(size(nums, 1), 1);
for i = 1:size(nums, 1)
    names{i, 1} = emotions{1, nums(i, 1)};
end

