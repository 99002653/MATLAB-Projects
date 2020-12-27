%%algorithm
% @author Sirisha
% @description
%%import data
raw_data = readtable('StudentsPerformance.csv');
%%Data selection
data = table;
data.gender = raw_data{:,1};
data.preparation = raw_data{:,5};
data.mathscore = raw_data{:,6};
data.readingscore = raw_data{:,7};
data.writingscore = raw_data{:,8};

%%Functions

[total_score, percentage_column] = percentage(data);

data.total_score = total_score;
data.percentage = percentage_column;

[rank_column] = class_rank(data);

data.class_rank = transpose(rank_column);
[cgpa_column] = cgpa(data);
data.cgpa = cgpa_column;

%%Analysis of scores - boys

boys_data = data(strcmp(data.gender, 'male'), :);
highest_total_score_boys = max(boys_data.total_score);
highest_percentage_boys = max(boys_data.percentage);
highest_cgpa_boys = max(boys_data.cgpa);

%%Analysis of scores - girls

girls_data = data(strcmp(data.gender, 'female'), :);
highest_total_score_girls = max(girls_data.total_score);
highest_percentage_girls = max(girls_data.percentage);
highest_cgpa_girls = max(girls_data.cgpa);

%%Data Visualizations
subplot(3, 1, 1);
histogram(categorical(data.gender));
title('Class strength');

subplot(3, 1, 2);
histogram(data.percentage);
title('percentage plot');

subplot(3, 1, 3);
histogram(categorical(data.preparation));
title('Preparation for exam');
%% Results
writetable(data,'Activity4_output.xlsx');
display(data);
display(highest_total_score_boys);
display(highest_percentage_boys);
display(highest_cgpa_boys);
display(highest_total_score_girls);
display(highest_percentage_girls);
display(highest_cgpa_girls);
%%Clearing Unncessary variables
clear cgpa_column math_score percentage_column rank_column total_score boys_data girls_data;
