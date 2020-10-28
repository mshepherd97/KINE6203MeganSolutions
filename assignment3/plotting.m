function [pictures] = plotting(x,y)
%UNTITLED8 Summary of this function goes here
%   takes two vectors and plots their values on a figure. This
%   function should set up the figure with titles for the chart and each axis

pictures = plot(x,y)
title('My Vectors')
xlabel('X')
ylabel('Y')
grid('on')
legend('Vector 1','Vector 2')




end

