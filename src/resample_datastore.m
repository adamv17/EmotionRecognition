function [dataOut,infoOut] = resample_datastore(dataIn,infoIn,targetRate)
%resample_datastore resamples the datastore based on the target rate
%   This function resamples the datastore by targetRate and updates the
%   info of the datastore to infoOut.
dataOut = resample( dataIn, targetRate, infoIn.SampleRate);
infoOut = infoIn;
infoOut.SampleRate = targetRate;
end

