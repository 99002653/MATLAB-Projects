function [ r ] = class_rank( data )
%CLASS_RANK Summary of this function goes here
%   Detailed explanation goes here
total_score = data.total_score;
[sd,p] = sort(total_score, 'descend');

r = 1:length(total_score);
r(p) = r;
end

