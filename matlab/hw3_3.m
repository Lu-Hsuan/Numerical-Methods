close all
clear all
i = sqrt(-1)
func =@(x,y) exp(x+i.*y);

x_range = -pi:0.1:pi;
y_range = -2*pi:0.1:2*pi;
[xx,yy] = meshgrid(x_range,y_range);
zz = func(xx,yy);
z_r = real(zz);
z_i = imag(zz);
figure(1)
mesh(xx,yy,z_r)
xlabel('x')
ylabel('y')
zlabel('z_r')
figure(2)
mesh(xx,yy,z_i)
xlabel('x')
ylabel('y')
zlabel('z_i')
figure(3)
mesh(xx,yy,sqrt(z_r.^2+z_i.^2))
xlabel('x')
ylabel('y')
zlabel('radius')
figure(4)
mesh(xx,yy,atan(z_i./z_r))
xlabel('x')
ylabel('y')
zlabel('agnle')
