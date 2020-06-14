function sorted_weights_bar(weight_matrix, feature_idxs, feature_names)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
figure;
num_of_features = size(weight_matrix, 2);
num_of_stats = size(weight_matrix, 1);

stat_weights = weight_matrix';
init_idxs = 1:size(stat_weights(:),1);
feat_idxs = floor(mod(init_idxs-1,num_of_features))+1;
[sorted_weights, I] = sort(stat_weights(:), 'descend');
feat_idxs = feat_idxs(I);
feat_count = 0;
for feat = 1:size(feature_names, 1)
    size_idxs = size(eval(['feature_idxs.' feature_names{feat,1}]), 2);
    plot_idxs = zeros(1, size_idxs*num_of_stats);
    for fts = 1:size_idxs
        feat_count = feat_count + 1;
        plot_idxs(1, 1+num_of_stats*(fts-1):num_of_stats*fts) = find(feat_idxs==feat_count);
    end
    plot_weight = nan*sorted_weights;
    plot_weight( plot_idxs) = sorted_weights(plot_idxs);
    bar(init_idxs, plot_weight,  "BarWidth", 0.9,'LineStyle','none'); 
    hold on;
end

legend(feature_names);
xlabel("Rank");
ylabel("Weight");
hold off;
end