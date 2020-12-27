function [ total_score , percentage_column ] = percentage( data )
%PERCENTAGE Summary of this function goes here
%   Detailed explanation goes here
math_score = data{:,3};
reading_score = data{:,4};
writing_score = data{:,5};

total_score = math_score + reading_score + writing_score;
percentage_column = total_score/3;

end

