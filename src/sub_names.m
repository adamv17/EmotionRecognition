function [sub] = sub_names(feature_names, feature_idxs, num_of_features)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
sub = strings(num_of_features, 1);
strcount = 1;
for z = 1:size(feature_names, 1)
    size_zf = size(feature_idxs{z, 1}, 2);
    if (size_zf > 1)
        for sub_num = 1:size_zf
            sub(strcount, 1) = append(feature_names{z, 1}, int2str(sub_num));
            strcount = strcount + 1;
        end
    else
        sub(strcount, 1) = feature_names{z,1};
        strcount = strcount + 1;
    end
end


