function [cross_value] = zcr(samples)
%zcr this function calculates the number of times the samples (signal)
%crosses the time axis
%   zcr calculates the cross value by multplying each pair of adjacent
%   samples by each other and checking if the sign of the multiplication is
%   negative or zero. The number of samples equal to zero are then
%   subtracted becuase the method described above counts zeros twice.
cross_value = sum(samples(1:end-1).*samples(2:end) <= 0) - sum(samples==0);
end

