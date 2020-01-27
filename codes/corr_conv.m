function [R_d1d2] = corr_conv(d1,d2,fs)
% this function impliments cross corelation using convolution
% input :
%   d1 , d1 : 1d signals , input of colleration
%   R_d1d2  : output of cross colleration
% for more documentation on how this function works , visit documentation
% of conv()
R_d1d2 = conv(d1 , conj(flip(d2)))./fs;
end

