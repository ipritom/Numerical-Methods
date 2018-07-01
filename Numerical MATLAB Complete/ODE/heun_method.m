clc; clear all;
h = input('Step Size: ');
x0 = input('inital value of x:');
y0 = input('initial value of y:');
i = x0;
while i<2
    %euler
    ye = y0 + h*ff(i,y0)
    %heun
     % (i+i)th next value of x
    y = y0 + (h/2)*(ff(i,y0)+ff(i+h,ye))
    y0 = y; %this will be the final answer
    i = i+h;
end
disp(y0)

