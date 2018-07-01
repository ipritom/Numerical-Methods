x1 = input('Enter x1:');
x2 = input('Enter x2:');

if f(x1)*f(x2)>0
    disp('Sorry')
else
    x0 = x1 - ((f(x1)*(x2-x1))/(f(x2)-f(x1)))

while (abs(x2-x1)/x2)>0.0001
    if f(x1)*f(x0)<0
        x2 = x0
    else
        x1 = x0
        
    end
        x0 = x1 - ((f(x1)*(x2-x1))/(f(x2)-f(x1)))
end
end