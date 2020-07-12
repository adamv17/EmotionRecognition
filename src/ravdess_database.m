function[ADS, Labels] = ravdess_database()
%ravdess_database accesses the RAVDESS databases and returns a labeled
%datastore
folder = 'C:\Users\adamv\OneDrive\Documents\Alpha\research project alpha\EmotionRecognition\databases\ravdess-emotional-speech-audio\audio_speech_actors_01-24';
ADS = audioDatastore(folder, 'IncludeSubfolders', true);
Labels = string(size(ADS.Files));
for i = 1:length(ADS.Files)
    Labels(i) = label_file(ADS.Files{i});
end
ADS.Labels = Labels;
end

function [new_filename] = label_file(filename)
%labe_file returns a new label based on the filename of the RAVDESS datastore
%   the number given by the filename(end-16) points to the corresponding
%   emotion to return as new_filename.
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
        emotion = "anger";
    case "6"
        emotion = "fear";
    case "7"
        emotion = "disgust";
    case "8"
        emotion = "surprise";
end
new_filename = emotion;
end

