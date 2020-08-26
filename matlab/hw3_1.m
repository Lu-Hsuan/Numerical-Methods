close all
clear all
format long
iter_n = 30;
posi_x = 1;
error = [];
for i = 1:iter_n
    result = sin_taylor(posi_x,i);
    real_r = sin(1);
    error = [error,real_r - result]
end

plot(1:30,error,'x-')
hold on
set(gca,'xtick',-1:2:30)
set(gca,'ytick',-0.2:0.05:+0.2)
ylim([-0.2,0.2])