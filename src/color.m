function [colors] = color(nums)
%color returns a color for each number in num
%   For numbers 1-7 returns the colors r, m, g, k, y, c, b
colors = strings(length(nums),1);
for c = 1:length(nums)
    switch (nums(c))
        case 1
            colors(c) = 'r';
        case 2
            colors(c) = 'm';
        case 3
            colors(c) = 'g';
        case 4
            colors(c) = 'k';
        case 5
            colors(c) = 'y';
        case 6
            colors(c) = 'c';
        case 7
            colors(c) = 'b';
    end
end

