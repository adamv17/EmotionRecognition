function sub_weight_bars(weight_matrix, sub, stat_names)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
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

