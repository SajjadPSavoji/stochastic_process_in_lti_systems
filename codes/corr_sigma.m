function [R_d1d2] = corr_sigma(d1,d2,fs)
% this function impliments cross corelation using dsp.Crosscollerator 
% input :
%   d1 , d1 : 1d signals , input of colleration
%   R_d1d2  : output of cross colleration
%   fs      : sampling frequency 
% for more documentation on how this function works , visit documentation
% of dsp.Crosscollorator

corr = dsp.Crosscorrelator;
R_d1d2 = corr(d1,d2)./fs;
end

