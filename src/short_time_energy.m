function [e] = short_time_energy(samples)
%short_time_energy calculates the short time energy of the given samples
%   Energy of a signal s[n] is defined as sum( s[n]^2 ). The short time
%   energy is defined as 1/N * sum( s*[n]^2 ) where N is the number of
%   samples and s*[n] is a piece of a whole signal.
e = 1/numel(samples) * sum(samples.^2);
end

