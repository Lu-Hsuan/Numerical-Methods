close all
clear all
format long

x1 = 0.5
x2 = 5
x3 = 7
f = @(x) 2.*x+3./x;
iter = 10;
[x_min]= parabolic(f,x1,x2,x3,iter)
x=-5:0.01:100;
plot(x,f(x),'-k')
hold on
plot(x_min,f(x_min),'o')
text(x_min,f(x_min)+25,'min:('+string(x_min)+','+string(f(x_min))+')') 
xlabel('x')
ylabel('f(x)')