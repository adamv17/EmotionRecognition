function plot_tsne(optimum_stats, labels, exaggeration, perplexity)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
all_types = unique(optimum_stats(end, :));
g = tsne(optimum_stats(1:end-1, :)', "Exaggeration", exaggeration, "Perplexity", perplexity);

figure;
for i = 1:numel(all_types)
    [~, idx] = find(optimum_stats(end, :) == all_types(i));
    c = color(all_types(i));
    plot(g(idx,1), g(idx,2), ['.' c{1}]);
    hold on;
end
legend( labels,'Location','northeastoutside');
strexg = int2str(exaggeration);
strper = int2str(perplexity);
title(append("tsne (", strexg, ", ", strper, ")"));
end

