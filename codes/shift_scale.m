function [distorted_data] = shift_scale(data,shifts,scales)
% this function makes linear combination of shifted samples of a signal
% inputs :
%   data   : main signal to be shifted
%   shifts : shift values to be implimented
%   scales : scale values to be implimented
%   
distorted_data = data;
repeat = size(shifts , 2);
for i= 1:repeat
    
    shift = shifts(i);
    scale = scales(i);
    pad = zeros(abs(shift),1);
    if shift > 0 
        shifted_data = data(1: end-shift);
        distorted_data = distorted_data + scale .* cat(1,pad , shifted_data);
    else
        shift = abs(shift);
        shifted_data = data(shift + 1: end);
        distorted_data = distorted_data + scale .* cat(1 , shifted_data , pad);
    
    end
end

end

