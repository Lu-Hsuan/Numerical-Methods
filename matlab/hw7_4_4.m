close all
clear all
format long

f = @(x) 1./(1+25.*x.^2);
x = -1:0.5:1;
y = f(x);

xx = -1:0.01:1;
[p] = Cubic_spline(x,y,xx,'not-a-knot');
plot(xx,f(xx),'b--')
hold on 
plot(x,f(x),'o')
hold on 
plot(xx,p,'r-')
hold on 
xlabel('x')
ylabel('f(x)')
M = ["real";"sample point";"not-a-knot"]
hold on
legend(M)
xlim([-1,1])
ylim([-0.5,1.1])