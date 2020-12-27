%%automation
% @author Sirisha
% @description
clear all;
clc;
% import data
text = fileread('music.html');
Lines = strsplit(text,newline);
k=1;
% exctracting data
for i=1:length(Lines)
    if contains(Lines{i},"<a")
        newStr = extractBetween(Lines{i},"<a",">");
        for j=1:length(newStr)
            getvalue{k}=newStr{j};
            k=k+1;
        end   
    end
end   
% Storing data to a new excel file
getvalue=vertcat("HTML Tag Value",getvalue');
getvalue_XLS= cellstr(getvalue);
xlswrite("Finalfile.xlsx",getvalue_XLS);
%%results
display(getvalue_XLS)
