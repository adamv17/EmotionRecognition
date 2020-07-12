function [ADS] = humaine()
%humaine imports the HUMAINE database
%   returns an audioDatastore of the HUMAINE database
folder = "C:\Users\Adam\Documents\Alpha\research project alpha\EmotionRecognition\databases\HUMAINE\HUMAINE\VAM_Audio\data";
ADS = audioDatastore(folder, 'IncludeSubfolders', true);
end

