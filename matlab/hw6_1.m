close all
clear all
format long

f =@(x,y) -(2.*x.^2+y.^2)
[xx,yy]=meshgrid(-1:0.1:7);
mesh(xx,yy,f(xx,yy))
%% gradient
delta = 1e-6;
x_p = 2;
y_p = 4;
fx = (f(x_p+delta,y_p)-f(x_p,y_p))/delta;
fy = (f(x_p,y_p+delta)-f(x_p,y_p))/delta;
d_f = [fx,fy];
%% directional derivative
dir_v = [3,2]';
dir_v = dir_v./(dir_v'*dir_v)   ;
d_d = d_f*dir_v;
v_x = linspace(x_p,x_p+3,50);
v_y = linspace(y_p,y_p+2,50);
hold on
quiver3(x_p,y_p,0,3,2,0,'r','filled','LineWidth',2);
fprintf('directional derivative = %f\n',d_d)
%% tangent line
lambda=linspace(-1,1);
m = sqrt(d_f*d_f');
fz = f(x_p,y_p);
x_t = x_p+lambda*(sqrt(4/((fy/fx)^2+1)))/2;
y_t = y_p+lambda*(sqrt(4/((fy/fx)^2+1)))/2*fy/fx;
if(fx <= 0)
    z_t = fz +lambda*-m;
else
    z_t = fz +lambda*m;
end
plot3(x_t,y_t,z_t,'k-','LineWidth',2,'MarkerSize',15)
plot3(x_p,y_p,fz,'o')
xlabel('x')
ylabel('y')
zlabel('z')
