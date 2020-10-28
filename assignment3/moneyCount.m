function [totalAmount] = moneyCount(quarter,dime,nickel,penny)
%UNTITLED5 Summary of this function goes here
%   takes in a number of quarters, dimes, nickels, and pennies
%   as inputs and returns the total amount as output. be sure to list the
%   number of quarters first, then dimes, then nickels, and lastly the
%   number of pennies.

quarter = quarter*.25;

dime = dime*.10;

nickel = nickel*.05;

penny = penny*.01;

totalAmount = strcat('$',num2str(quarter+dime+nickel+penny))




end

