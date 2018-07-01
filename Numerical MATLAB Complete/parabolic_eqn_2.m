clc;clear all;

L = 4;
H = 4;

u = zeros(L,H)

%setting boundary condition
u(1,:)= 100;
u(H,:)= 0;
u(:,1)= 100;
u(:,L)= 0;

i = 0 ; %iteration

while i<100;
    