function [logic] = triangle(array)
%UNTITLED6 Summary of this function goes here
%   accepts a single input of a 3-element array (e.g. [3 4 5]), and returns a
%   logical value (0 or 1) indicating if the 3 elements of the array represent the sides
%   of a valid triangle.  A valid triangle is a triangle that the shorter
%   two sides sum is greater than the longest side. 

a= array(1,1);
b= array(1,2);
c= array(1,3);
if ((a+b)>c)
    logic=true
elseif ((a+c)>b)
    logic=true
elseif ((b+c)>a)
    logic=true
else
    logic=false
end




end

