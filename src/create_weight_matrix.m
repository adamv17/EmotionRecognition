function [weight_matrix] = create_weight_matrix(weights, num_of_features, num_of_stats)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
weight_matrix = zeros(num_of_stats, num_of_features);
for i = 1:num_of_features
    count = 1+num_of_stats*(i-1);
    weight_matrix(1:num_of_stats, i) = weights(count:count+num_of_stats-1);
end


