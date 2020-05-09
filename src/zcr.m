function [cross_value] = zcr(samples)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
cross_value = sum(samples(1:end-1).*samples(2:end) <= 0) - sum(samples==0);
end

