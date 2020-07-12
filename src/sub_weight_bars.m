function sub_weight_bars(weight_matrix, sub, stat_names)
%sub_weight_bars plots bar graphs for each stat showing the weight
%distribution between features
%   plots for each stat the corresponding weight vector with the name of
%   the stat and feature legends.
for snum = 1:size(weight_matrix, 1)
    figure;
    for zoom_f = 1:size(weight_matrix, 2)
        bar(zoom_f, weight_matrix(snum, zoom_f));
        hold on;
    end
    legend(sub, 'Location', 'northeastoutside');
    title("stat: " + stat_names(1, snum));
    xlabel("Features");
    ylabel("Weight");
    hold off;
end

