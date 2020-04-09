function [ADS] = berlin_emotional_database()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
folder = "C:\Users\Adam\Documents\Alpha\research project alpha\databases\Berlin EmoDB\wav";
ADS = audioDatastore(folder, 'IncludeSubfolders', true);
Labels = string(size(ADS.Files));
for i = 1:length(ADS.Files)
    Labels(i) = label_file(ADS.Files{i});
end
ADS.Labels = Labels;
end

function [new_filename] = label_file(filename)
switch filename(end-5)
    case "W"
        emotion = "anger";
    case "L"
        emotion = "boredom";
    case "E"
        emotion = "disgust";
    case "A"
        emotion = "fear";
    case "F"
        emotion = "happy";
    case "T"
        emotion = "sad";
    case "N"
        emotion = "neutral";
end
new_filename = emotion;
end

