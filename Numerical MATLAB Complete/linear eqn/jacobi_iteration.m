clc; clear all;
a = input('Enter coefficient matrix:');
b = input('Enter constant matrix:');
n = length(b); %number of unknown variables
err = 0.0001;
%taking initial guess  x = 0
for i=1:n
    x0(i) = b(i)/a(i,i);
end

%next iterations
key = 1;
step = 0;
while key==1
    key =0;
    step = step+1;
    for i=1:n
        sum = b(i);
        for j = 1:n
            if j ~=i
                sum = sum - a(i,j)*x0(j);
            end
        end
        x(i) = sum/a(i,i);
        if key==0   
            if abs((x(i)-x0(i))/x(i))> err
                key=1;
                stp_err(step,i) = abs((x(i)-x0(i))/x(i)); %recording error
            end
        end
        if key==1
            x0(i) = x(i);
        end
    end
    
end
disp(x);
tx = sprintf('%d steps',step);
disp(tx);
disp(stp_err);


