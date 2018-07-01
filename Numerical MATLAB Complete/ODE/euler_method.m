clc; clear all;
h = input('Step Size: ');
x0 = input('inital value of x:');
y0 = input('initial value of y:');
i = x0;
while i<2
    y = y0 + h*f(i)
    y0 = y;
    i = i+h;
end
disp(y)

