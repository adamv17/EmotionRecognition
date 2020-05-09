function [e] = short_time_energy(samples)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
e = 1/length(samples) * sum(samples.^2);
end

