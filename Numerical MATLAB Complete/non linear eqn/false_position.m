clear all;
clc;
x1 = input('Enter x1:');
x2 = input('Enter x2:');
f1 = x1*x1 - x1 -2;
f2 = x2*x2 - x2 -2;

if f1*f2>0
    disp('Sorry');
else
    x0 = x1-((f1*(x2-x1))/(f2-f1))
    f0 = x0*x0 -x0 -10;
    
    while (abs(x2-x1)/x2)>0.0001
        if f1*f0<0
            x2 = x0;
            f2=f0;
        else
            x1 = x0;
            f1 = f0;
        end
        x0 = x1-((f1*(x2-x1))/(f2-f1))
    f0 = x0*x0 -x0 -10;
    end
    disp(x0)
end