function [length,firstLetter,lastLetter] = anyInputWord(str)
%UNTITLED2 Summary of this function goes here
%   Write a function that takes a string value as input and returns the length of the
%   string and the first and last character as outputs.

length = strlength(str)

firstLetter = str([1])

lastLetter = str([end])


 

end

