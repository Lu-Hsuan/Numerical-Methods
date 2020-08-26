close all
clear all
format long

fy = @(t,y) -1e5.*y+99999.*exp(-t)
fyy = @(t,y) sin(t)
tspan = [0,7]
y0 = -1;

h = 1e-5;
[y,tt] = Heun_D(fyy,tspan(1),tspan(2),y0,h);

figure(1)
plot(tt,y);
xlabel("t")
ylabel("y")
title("h = "+string(h))
% 
% h = 2e-5;
% [y,tt] = Eulr_D(fy,tspan(1),tspan(2),y0,h);
% 
% figure(2)
% plot(tt,y);
% xlabel("t")
% ylabel("y")
% title("h = "+string(h))
% 
% h = 1e-5;
% [y,tt] = Eulr_D(fy,tspan(1),tspan(2),y0,h);
% figure(3)
% plot(tt,y);
% xlabel("t")
% ylabel("y")
% title("h = "+string(h))