%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 4 
% submitted by Megan Shephed
% Date: 10/29-11/5/2020
%  This assignment will analyze some isometric strength data. 
% All input data is contained in the file ‘isok_data_6803.csv’ 
%  on Canvas in the 'Get Data In, Process Data, Get Data Out' Module. 
% The file contains subject ids, ages, genders, weights, 
%  and three days of isometric maximum strength data for some participants 
% in a strength training research protocol.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This function will import data, this function has each column of data stored
% as a separate vector and the column headers are the variable names

[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv');

% This function will calculate the individual means for days 1 - 3
% for every male and female, and will also calculate the overal group
% average isometric strength for the group of males and females.  this is 
% genderIsoCalc

[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)

% This function will takes the subject ID's and two days of data and
% returns the ID of subjects who showed an increase between the days.  It
% should be able to look at day 1 and day 2, as well as day2 to day3.  This
% is dayComparer.  


[day1toDay2] = dayComparer(SubjectID,Day1,Day2)

[day2toDay3] = dayComparer(SubjectID,Day2,Day3)


% weight normalize the isokinetic data and calculate the means for each day.
% So calculate the average of each day with respect to the weight.  Given
% that there are 25 subjects the data wil run 25 times.  By using max
% before the calculation of the average of the each day for each subject in
% relation to the weight, the only answer given will be the maximum answer
% and the answer we are looking for.  The average of each day divided by
% the weight only has one maximum value all other values are zero.  that's
% why max function works best for this equation


normDay1mean = max(mean(Day1/Weight))

normDay2mean = max(mean(Day2/Weight))

normDay3mean = max(mean(Day3/Weight))


% Export results.  This function when the script is run normally will save 
% all results as a .csv file. First I create a table with my values that i
% wish to be stored then I save it. I have saved the different data points
% into different tables because they all have a different number of data
% points and do not all match up, with using append i am able to add these
% tables to the saved file without overriding the already saved data

T = table(maleIsoIndMeans);
T2 = table(femaleIsoIndMeans);
T3 = table(maleGroupIsoMean,femaleGroupIsoMean);
T4 = table(day1toDay2);
T5 = table(day2toDay3);
T6 = table(normDay1mean,normDay2mean,normDay3mean);

writetable(T,'iso_results.csv')
writetable(T2,'iso_results.csv',"WriteMode","append")
writetable(T3,'iso_results.csv',"WriteMode","append")
writetable(T4,'iso_results.csv',"WriteMode","append")
writetable(T5,'iso_results.csv',"WriteMode","append")
writetable(T6,'iso_results.csv',"WriteMode","append")


disp('The Results are in')
