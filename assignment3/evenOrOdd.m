function [answer] = evenOrOdd(number1,number2)
%UNTITLED4 Summary of this function goes here
%   takes 2 numbers as inputs and returns Woo if their sum is
%   even and Hah if their sum is odd.

sum = number1+number2;
if (rem(sum,2)==0) 
    fprintf('woo')
else 
    fprintf('hah')
end

end

