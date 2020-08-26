close all
clear all
format long
iter_n =5;
posi_x = -2*pi:0.1:2*pi
M = [];
for i = 1:iter_n
    result = cos_taylor(posi_x,i);
    plot(posi_x,result,'-')
    M = [M;'iter = '+string(i-1)]
    hold on
end
real_r = cos(posi_x);
plot(posi_x,real_r,'k--')
M = [M;'real cos']
legend(M)

y_axis = 5;
x_axis = 7;
set(gca,'xtick',-x_axis:1:x_axis)
xlim([-x_axis,x_axis])
set(gca,'ytick',-y_axis:0.5:+y_axis)
ylim([-y_axis,y_axis])
xlabel('x')
ylabel('cos(x)')