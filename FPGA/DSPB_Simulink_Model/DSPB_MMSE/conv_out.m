function [out] = conv_out(input, FS)
input = input';
input(input==1234)=[];
total_frames = length(input) / (FS * 2);
out = zeros(1, (FS / 2) * floor(total_frames));
overlap = zeros(1, FS / 2);
for i = 1 : floor(total_frames)
    out(((i - 1) * (FS / 2)) + 1 : ((i - 1) * (FS / 2)) + (FS / 2)) = input(((i - 1) * FS) + 1 : ((i - 1) * FS) + (FS / 2)) + overlap;
    overlap = input((i - 1) * FS + 201 : (i - 1) * FS + 200 + (FS / 2));
end
end

