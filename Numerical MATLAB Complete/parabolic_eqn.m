clear all;clc;
L=100;
H=100;
u = zeros(L,H);
i=0;

u(1,:) = 0;
u(L,:) = 0;
u(:,1) = 1;
u(:,H) = 1;

while (i<2000)
    i = i+1;
    if(mod(i,10)==0)
        imagesc(u);
        colorbar;
        surf(u);
        colorbar;
        drawnow;
    end
    
    Lu = del2(u);
    u(2:L-1,2:H-1) = u(2:L-1,2:H-1)+ Lu(2:L-1,2:H-1);
end