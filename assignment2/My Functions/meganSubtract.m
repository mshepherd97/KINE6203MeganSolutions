function [difference] = meganSubtract(number1,number2)
%UNTITLED2 Summary of this function goes here
%   This function takes in two numbers as inputs and returns the
%   difference.  Will always subtract smaller number from larger number.

if (number1 >= number2)
    difference = number1 - number2;
else 
    difference = number2 - number1;

end

