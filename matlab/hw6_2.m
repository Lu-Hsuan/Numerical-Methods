close all
clear all
format long

f =@(x,y) (2.25.*x.*y+1.75.*y-1.5.*x.^2-2*y.^2)
[xx,yy]=meshgrid(-4:0.1:4);
mesh(xx,yy,f(xx,yy))
%% gradient
g = sym(f)

syms x;syms y
dx = diff(g,x)
dy = diff(g,y)
[c,t] = coeffs(dx)
[c_,t] = coeffs(dy)
A = [c(1),c(2);
     c_(1),c_(2)]
b = [0;-c_(3)]

ans = double(A\b);
x_p = ans(1)
y_p = ans(2)
z_p = f(x_p,y_p)
hold on
plot3(x_p,y_p,z_p,'o')
xlabel('x')
ylabel('y')
zlabel('z')
fprintf("max point is (%f,%f,%f)\n",x_p,y_p,z_p)
