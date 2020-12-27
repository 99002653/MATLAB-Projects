function [ cgpa_column ] = cgpa( data )
%CGPA Summary of this function goes here
%   Detailed explanation goes here
math_score = data.mathscore;
reading_score = data.readingscore;
writing_score = data.writingscore;

math_gpa = math_score/10;
reading_gpa = reading_score/10;
writing_gpa = writing_score/10;

cgpa_column = (math_gpa + reading_gpa+ writing_gpa)/3;

end

