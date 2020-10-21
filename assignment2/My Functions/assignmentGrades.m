function [averageGrade,letterGrade] = assignmentGrades(grade1,grade2,grade3)
%UNTITLED3 Summary of this function goes here
%   takes inputs of three grades and returns the average grade for the class. 
% And then converts it to a ten point grading scale

averageGrade=(grade1+grade2+grade3)/3;

if (averageGrade >= 90)
    letterGrade = 'A';
elseif (averageGrade >= 80)
    letterGrade = 'B';
elseif (averageGrade >= 70)
    letterGrade = 'C';
else (averageGrade >= 60)
    letterGrade = 'you tried, but not hard enough';
end



end

