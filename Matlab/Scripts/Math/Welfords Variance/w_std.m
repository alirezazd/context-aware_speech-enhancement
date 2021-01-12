function [output] = w_std(input)
output = sqrt((sum(input .^2) - ((sum(input)^2) / length(input))) / (length(input)-1));
end