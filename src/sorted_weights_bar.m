function sorted_weights_bar(weight_matrix, feature_idxs, feature_names, k)
%sorted_weights_bar plots a bar graph of the sorted weights
%   sorted_weights_bar plots each feature stat combination in descending
%   order.
figure;
num_of_features = size(weight_matrix, 2);
num_of_stats = size(weight_matrix, 1);

filter_nan_inf(weight_matrix);
stat_weights = weight_matrix';
init_idxs = 1:size(stat_weights(:),1);
feat_idxs = floor(mod(init_idxs-1,num_of_features)+1);
[sorted_weights, I] = sort(stat_weights(:), 'descend');
feat_idxs = feat_idxs(I);
for feat = 1:size(feature_names, 1)
    feat_count = feature_idxs{feat,1};
    size_idxs = size(feat_count, 2);
    plot_idxs = zeros(1, size_idxs*num_of_stats);
    for fts = 1:size_idxs
        plot_idxs(1, 1+num_of_stats*(fts-1):num_of_stats*fts) = find(feat_idxs==feat_count(1,fts));
    end
    plot_weight = nan*sorted_weights;
    plot_weight( plot_idxs) = sorted_weights(plot_idxs);
    bar(init_idxs, plot_weight,  "BarWidth", 0.9,'LineStyle','none'); 
    hold on;
end

legend(feature_names);
xlabel("Rank");
ylabel("Weight");
title(append("k = ", int2str(k)));
hold off;
end
