%simpson composite 3/8 rule (better result possibility segment>10)
clc;clear all;
b = input('Upper Limit:');
a = input('Lower Limit:');
n = input('Number of Segment:');
m=3*n;
h = (b-a)/m;
f1 = 0;
f2 = 0;
for i=1:m
    
    f1 = f1 + f(a+(3*i-2)*h) + f(a+(3*i-1)*h)
end;
m=m-1
for i=1:m
    f2 = f2 + f(a+(3*i)*h);
end

I = (3*h/8)*(f(a)+ 3*f1 + 2*f2 + f(b));
disp(I);