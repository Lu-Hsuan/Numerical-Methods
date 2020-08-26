close all
clear all
format long

f_a = @(x,y) exp(-(x.^2+y.^2))
f_b = @(x,y) x.*exp(-(x.^2+y.^2))

[xx,yy] = meshgrid(-3:0.01:3,-3:0.01:3);
figure(1)
mesh(xx,yy,f_a(xx,yy))
figure(2)
mesh(xx,yy,f_b(xx,yy))