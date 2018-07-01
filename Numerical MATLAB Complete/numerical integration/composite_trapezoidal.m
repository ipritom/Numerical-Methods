%composite trapezoidal rule
clc;clear all;
b = input('Upper Limit:');
a = input('Lower Limit:');
n = input('Sampling Points:');
h = (b-a)/n;
m = (f(a)+f(b))/2;
I1 = h*m; %trapizoidal value
I2 = 0
for i=1:n-1
    I2 =I2 + h*f(a+i*h);
end
Ict = I1+I2;
disp(Ict)
