function [output] = dayComparer(SubjectID,dayA,dayB)
% dayComparer is a function that takes the subject ID's and two days of data and
% returns the ID of subjects who showed an increase in isometric strength in between the days.  
% It should be able to look at day1 and day2, as well as day2 to day3.   
% 


count = 0;
% using the count function allows for the data that is produced to be shown
% only once instead of cycling through 25 times and displaying the output
% 25 times.  by setting count to zero outside of the function and adding 1
% to count within the function allows the function to cycle 1 -25 and only
% display the final answer with all 25 variables listed one time.

for i= 1:length(SubjectID);
    %code will run for all inputs of subject id's
    
    if (dayA(i)<dayB(i));
        count = count + 1;
        output(count,1) = SubjectID(i);
    end
end

        

end

