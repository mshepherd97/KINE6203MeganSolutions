%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Assignment 3
% % Submitted by: Megan Shepherd
% % This assignment is about making functions from prompts given.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1) function [doubled] = doubler(number1)
%UNTITLED2 Summary of this function goes here
%   takes a number as input and returns a value that is 2 times
%   the number as output.
%   doubled = number1*2;
%   end

% 2) function [sumNum,differenceNum,productNum,maxNum] = variousExpressions(number1,number2)
%UNTITLED3 Summary of this function goes here
%   takes 2 numbers as input and returns values for the sum,
%   difference, product and max of the two numbers as outputs
% 
% sumNum = number1 + number2
% 
% differenceNum = number1 - number2
% 
% productNum = (number1)*(number2)
% 
% maxNum = max(number1,number2)
% end

% 3)function [answer] = evenOrOdd(number1,number2)
%UNTITLED4 Summary of this function goes here
%   takes 2 numbers as inputs and returns Woo if their sum is
%   even and Hah if their sum is odd.
% 
% sum = number1+number2;
% if (rem(sum,2)==0) 
%     fprintf('woo')
% else 
%     fprintf('hah')
% end
% 
% end

% 4) function [totalAmount] = moneyCount(quarter,dime,nickel,penny)
%UNTITLED5 Summary of this function goes here
%   takes in a number of quarters, dimes, nickels, and pennies
%   as inputs and returns the total amount as output. be sure to list the
%   number of quarters first, then dimes, then nickels, and lastly the
%   number of pennies.
% 
% quarter = quarter*.25;
% 
% dime = dime*.10;
% 
% nickel = nickel*.05;
% 
% penny = penny*.01;
% 
% totalAmount = strcat('$',num2str(quarter+dime+nickel+penny))
% 
% 
% 
% 
% end

% 5) function [logic] = triangle(array)
%UNTITLED6 Summary of this function goes here
%   accepts a single input of a 3-element array (e.g. [3 4 5]), and returns a
%   logical value (0 or 1) indicating if the 3 elements of the array represent the sides
%   of a valid triangle.  A valid triangle is a triangle that the shorter
%   two sides sum is greater than the longest side. 
% 
% a= array(1,1);
% b= array(1,2);
% c= array(1,3);
% if ((a+b)>c)
%     logic=true
% elseif ((a+c)>b)
%     logic=true
% elseif ((b+c)>a)
%     logic=true
% else
%     logic=false
% end
% 
% 
% 
% 
% end

% 6) function [numberOut] = primeFunc(numberIn)
%UNTITLED7 Summary of this function goes here
%   takes a number as input and returns true if the number is a
%   prime number and false if the number is not prime.
% 
% numberOut = isprime(numberIn)
% 
% end

% 7) function [pictures] = plotting(x,y)
%UNTITLED8 Summary of this function goes here
%   takes two vectors and plots their values on a figure. This
%   function should set up the figure with titles for the chart and each axis
% 
% pictures = plot(x,y)
% title('My Vectors')
% xlabel('X')
% ylabel('Y')
% grid('on')
% legend('Vector 1','Vector 2')
% 
% 
% 
% 
% end

% 8) function [counting] = counter(a,b)
%UNTITLED Summary of this function goes here
%   Write a function that takes 2 numbers as input and displays a counter from the
%   lower number to the higher number
% 
% 
% for i = a:b
%     disp(i);
% end
% 
% 
% 
% end

% 9) function [length,firstLetter,lastLetter] = anyInputWord(str)
%UNTITLED2 Summary of this function goes here
%   Write a function that takes a string value as input and returns the length of the
%   string and the first and last character as outputs.
% 
% length = strlength(str)
% 
% firstLetter = str([1])
% 
% lastLetter = str([end])
% 
% 
%  
% 
% end


% 10) function [finalMessage] = doneWithAssignment3
%UNTITLED3 Summary of this function goes here
%   Write a function that does not take any input and displays “Thank goodness this
%   assignment is over” when called
% 
% finalMessage = 'Thank goodness this assignment is over!'
% 
% 
% end