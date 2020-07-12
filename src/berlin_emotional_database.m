function [ADS, Labels] = berlin_emotional_database()
%berlin_emotional_database accesses the berlin emotional database and
%returns an audioDatastore of its files and emotion labels.
%   Detailed explanation goes here
folder = "C:\Users\adamv\OneDrive\Documents\Alpha\research project alpha\EmotionRecognition\databases\Berlin EmoDB\wav";
ADS = audioDatastore(folder, 'IncludeSubfolders', true);
Labels = string(size(ADS.Files));
for i = 1:length(ADS.Files)
    Labels(i) = label_file(ADS.Files{i});
end
ADS.Labels = Labels;
end

function [new_filename] = label_file(filename)
%labe_file returns a new label based on the filename of the berlin
%emotional database
%   the letter given by the filename(end-5) points to the corresponding
%   emotion to return as new_filename.
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

