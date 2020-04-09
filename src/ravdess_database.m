function[ADS] = ravdess_database()
folder = "C:\Users\Adam\Documents\Alpha\research project alpha\databases\ravdess-emotional-speech-audio\audio_speech_actors_01-24";
ADS = audioDatastore(folder, 'IncludeSubfolders', true);
Labels = string(size(ADS.Files));
for i = 1:length(ADS.Files)
    Labels(i) = label_file(ADS.Files{i});
end
ADS.Labels = Labels;
end

function [new_filename] = label_file(filename)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
switch filename(end-16)
    case "1"
        emotion = "neutral";
    case "2"
        emotion = "calm";
    case "3"
        emotion = "happy";
    case "4"
        emotion = "sad";
    case "5"
        emotion = "angry";
    case "6"
        emotion = "fearful";
    case "7"
        emotion = "disgust";
    case "8"
        emotion = "surprise-";
end
new_filename = emotion;
end

