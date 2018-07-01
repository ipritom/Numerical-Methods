clc; clear all;
a = input('Enter coefficient matrix:');
b = input('Enter constant matrix:');
n = length(b); %number of unknown variables
err = 0.0001;

x = zeros(1,n);

k = 1;
step = 0;
while k==1
    k=0;5
    step = step+1;
    for i=1:n
        sum = b(i);
        for j=1:n
            if j~=i
                sum = sum - a(i,j)*x(j);
            end
        end
        temp = sum/a(i,i)
        if k==0
            if abs((temp-x(i))/temp)>err
                k=1;
            end
            x(i)=temp;
        end
    end
    
    
    if step>200
        break
    end
    
end
disp(x);
tx = sprintf('%d steps',step);
disp(tx);