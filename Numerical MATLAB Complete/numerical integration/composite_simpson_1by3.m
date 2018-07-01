%simpson 1/3 rule (better result possibility segment>10)
clc;clear all;
b = input('Upper Limit:');
a = input('Lower Limit:');
n = input('Number of Segment(even):');
m = n/2
h = (b-a)/n;
f1 = 0;
f2 = 0;
for i=1:m
    f1 = f1 + f(a+(2*i-1)*h);
end
for i=1:(m-1)
    f2 = f2 + f(a+(2*i)*h);
end
I = (h/3)*(f(a)+4*f1+2*f2+f(b));
disp(I);