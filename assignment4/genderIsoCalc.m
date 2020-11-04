function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)
%Create a function (name it genderIsoCalc.m) that returns four outputs. 
% The first set of outputs (onefor males and one for females) should return 
% a matrix with individual mean isometric strengthvalues across all 3 days 
% of lifting for the appropriate group. The second set of outputs will 
% return the single mean value for each group (mean of subject means). 
% Call this function in your main script andstore the results with variable 
% names maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMeanand 
% femaleGroupIsoMean. 
%   

maleIsoIndMeans = [];
femaleIsoIndMeans = [];
%this will make sure that all data from the results will be stored into
%these variables in a vector format

for i = 1:length(Gender);
    %this will run the code as long as there is an input for gender
    
    if Gender(i) == 'M';
        maleIsoIndMeans = ((Day1(i)+Day2(i)+Day3(i))/3)
        maleGroupIsoMean = mean(nonzeros(maleIsoIndMeans));
        %nonzeros function only calcuates the values that aren't zero since
        %those values will influence an output mean
    elseif Gender(i) == 'F';
        femaleIsoIndMeans = ((Day1(i)+Day2(i)+Day3(i))/3)
        femaleGroupIsoMean = mean(nonzeros(femaleIsoIndMeans));
    end
end


end

