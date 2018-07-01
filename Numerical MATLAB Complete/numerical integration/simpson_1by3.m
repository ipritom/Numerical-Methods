%simpson 1/3 rule
clc;clear all;
b = input('Upper Limit:');
a = input('Lower Limit:');

h = b-a;
x1 = (a+b)/2;
I = h*(f(a)+4*f(x1)+f(b))/6;
disp(I);