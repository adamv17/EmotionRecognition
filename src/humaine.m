function [ADS] = humaine()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
folder = "C:\Users\Adam\Documents\Alpha\research project alpha\EmotionRecognition\databases\HUMAINE\HUMAINE\VAM_Audio\data";
ADS = audioDatastore(folder, 'IncludeSubfolders', true);
end

