function [num_emotions] = number_emotions(emotions)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
num_emotions = zeros(length(emotions),1);
for e = 1:length(emotions)
    switch (string(emotions(e)))
        case "anger"
            num_emotions(e) = 1;
        case "boredom"
            num_emotions(e) = 2;
        case "disgust"
            num_emotions(e) = 3;
        case "fear"
            num_emotions(e) = 4;
        case "happy"
            num_emotions(e) = 5;
        case "sad"
            num_emotions(e) = 6;
        case "neutral"
            num_emotions(e) = 7;
    end
end

