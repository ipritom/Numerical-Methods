%laplace equation solving
clc;clear all;close all;
L = 100; %row
H = 100; %col

u = zeros(L,H);

%setting boundary condition
u(1,:)= 100;
u(H,:)= 0;
u(:,1)= 100;
u(:,L)= 0;

for iteration=1:100
 
    for i=2:L-1
        for j=2:H-1
            u(i,j) = 0.25*(u(i+1,j)+u(i-1,j)+u(i,j+1)+u(i,j-1));
        end
    end
    imagesc(u);colorbar;
    drawnow;


end
disp(u);

figure;surf(u);colorbar;

    