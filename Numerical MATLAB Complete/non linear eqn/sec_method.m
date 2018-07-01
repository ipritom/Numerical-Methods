clear all;
clc;
x1 = input('Enter x1:');
x2 = input('Enter x2:');
f1 = f(x1);
f2 = f(x2);
x3 = (f2*x1-f1*x2)/(f2-f1);

while abs((x3-x2)/x3)>0.0001

    x1 = x2;
    f1 = f2;
    
    x2 = x3;
    f2 = f(x3);
    x3 = (f2*x1-f1*x2)/(f2-f1);
end
disp(x3)