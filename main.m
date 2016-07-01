clear all;
clc;
more off;

x = [1,2,3,4]
y = [3,6,11,18]

vandermonde(x,y)

f1 = @(x) x+1


trapezio(f1(x),2,1,3)
simpson(f1(x),2,1,3)