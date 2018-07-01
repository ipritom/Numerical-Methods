%trapezoidal rule
clc;clear all;
b = input('Upper Limit:');
a = input('Lower Limit:');

h = b-a;
m = (f(a)+f(b))/2;
I = h*m;
disp(I)
%truncation error calculating
err = ((h.^3)*fi(b))/12;
tx = sprintf('Truncation Error %f',err);
disp(tx);