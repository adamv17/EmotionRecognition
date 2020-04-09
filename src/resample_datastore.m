function [dataOut,infoOut] = resample_datastore(dataIn,infoIn,targetRate)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
dataOut = resample( dataIn, targetRate, infoIn.SampleRate);
infoOut = infoIn;
infoOut.SampleRate = targetRate;
end

