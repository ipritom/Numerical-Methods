%fourth order Runge-Kutta Method
clc; clear all;
h = input('Step Size: ');
x0 = input('inital value of x:');
y0 = input('initial value of y:');
i = x0;
while i<1.5
    m1 = ff(i,y0)
    m2 = ff(i+h/2,y0+m1*h/2)
    m3 =  ff(i+h/2,y0+m2*h/2)
    m4 = ff(i+h,y0+m3*h)
    y = y0 + ((m1+2*m2+2*m3+m4)/6)*h
    y0 = y
    i = i+h
end
disp(y0)