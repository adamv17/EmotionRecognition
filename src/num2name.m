function [names] = num2name(nums, emotions)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
names = cell(size(nums, 1), 1);
for i = 1:size(nums, 1)
    names{i, 1} = emotions{1, nums(i, 1)};
end

