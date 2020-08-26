close all
clear all
format long

f = @(x) 1./(1+25.*x.^2);
n= linspace(-1,1,1000);
plot(n,f(n))
xlabel('x')
ylabel('f(x)')
xlim([-1,1])
ylim([0,1.1])