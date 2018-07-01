clc; clear all;
h = input('Step Size: ');
x0 = input('inital value of x:');
y0 = input('initial value of y:');
i = x0;
while i<2
    y = y0 + h*ff(i+h/2,y0+(h/2)*ff(i,y0))
    i = i+h;
    y0 = y;
end
disp(y0)

