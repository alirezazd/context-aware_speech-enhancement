function [data] = wst2wav(wst_name, dtype, fraction_width, sf)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

fid = fopen(wst_name);
data = fread(fid, dtype);
fclose(fid);
data = data .* (2 ^ -fraction_width);
audiowrite([wst_name(1:end-3), 'wav'],data,sf);
end

