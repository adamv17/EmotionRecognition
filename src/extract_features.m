function [features, idxs, names] = extract_features(ads, fs, num_files)
%extract_features calculates the spectral, prosodic and cepstral features
%of the speech signal and returns a cell matrix for each speech segment with
%its corresponding features.
%   The following features and methods are employed in this function:
%
%
%
%
%
%
%
%
%
%
ms = 30;
w = round((ms/1000) * fs);
op = 0.5;
overlap = round(w*op);

afe = audioFeatureExtractor("SampleRate", fs, ...
                            "SpectralDescriptorInput","melSpectrum", ...
                            "Window", hamming(w, "periodic"), ...
                            "OverlapLength", overlap, ... 
                            "spectralCentroid", true, ...
                            "spectralCrest", true, ...
                            "spectralDecrease", true, ...
                            "spectralEntropy", true, ...
                            "spectralFlatness", true, ...
                            "spectralFlux", true, ...
                            "spectralKurtosis", true, ...
                            "spectralRolloffPoint", true, ...
                            "spectralSkewness", true, ...
                            "spectralSlope", true, ...
                           	"spectralSpread", true, ...
                            "mfcc", true, ...
                            "mfccDelta", true, ...
                            "mfccDeltaDelta", true, ...
                            "harmonicRatio", true, ...
                            "pitch",true);
                        

                      
for f = 1:num_files
    file = read(ads);
    afe_features = extract(afe,file);
    num_afe = size(afe_features, 2);
    for afe_feat = 1:num_afe
        features{afe_feat, f} = afe_features(:, afe_feat); 
    end
    
    windows = floor(numel(file)/overlap)-1;
    st_energy = zeros(1, windows);
    zcr_vec = zeros(1, windows);
    prevc = 1;
    prevd = 1;
    for s = 1:windows
        ind = overlap*(s-1)+1:overlap*(s+1);
        st_energy(1, s) = short_time_energy(file(ind));
        zcr_vec(1, s) = zcr(file(ind));
        [cont, disc] = energyop(file(ind), 0);
        
        t_cont(prevc:prevc+numel(cont)-1) = cont;
        t_disc(prevd:prevd+numel(disc)-1) = disc;
        prevc = prevc+numel(cont);
        prevd = prevd+numel(cont);
    end
    
    features{num_afe+1, f} = st_energy;
    features{num_afe+2, f} = zcr_vec;
    features{num_afe+3, f} = t_cont;
    features{num_afe+4, f} = t_disc;
end


[idxs_struct, ~] = info(afe);
names = fieldnames(idxs_struct);
num_names = size(names,1);
names{num_names+1,1} = 'shortTimeEnergy';
names{num_names+2,1} = 'zcr';
names{num_names+3,1} = 'continuousTEO';
names{num_names+4,1} = 'discreteTEO';

idxs = cell(size(names, 1), 1);
for n = 1:num_names
    idxs{n, 1} = eval(['idxs_struct.' names{n, 1}]);
end
lastidx = idxs{num_names, 1};
for a = 1:size(names, 1) - num_names
    idxs{num_names+a, 1} = lastidx+a;
end

