close all
clear all
format long

f = @(x) sin(x).^2;
t= linspace(0,2*pi,8);
y = f(t);
xx = 0:0.01:2*pi;
[p] = Cubic_spline(t,y,xx,'not-a-knot');
plot(xx,f(xx),'b-')
hold on 
plot(t,f(t),'o')
hold on 
plot(xx,p,'r-')
hold on 
xlabel('x')
ylabel('sin^2(x)')
M = ["real";"sample point";"not-a-knot"]
hold on
legend(M)
xlim([0,2*pi])
ylim([-0.1,1.2])