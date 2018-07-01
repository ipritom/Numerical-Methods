x0 = input('Enter value:');
x1 = x0 - f(x0)/f_(x0);
while (abs(x1-x0)/x1)>0.0001
    x0 = x1;
    x1 = x0 - f(x0)/f_(x0);
    
    
end
disp(x0)
