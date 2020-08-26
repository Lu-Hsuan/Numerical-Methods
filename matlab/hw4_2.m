close all
clear all
format long

x1 = 0
x2 = 2
f = @(x) (9*exp(-x).*sin(2*pi*x)-3.5);

inv_f = @(x) -(9*exp(-x).*sin(2*pi*x)-3.5);
iter = 50;
[x_min]= golden_section(f,x1,x2,iter)
[x_max]= golden_section(inv_f,x1,x2-1,iter)
figure(1)
x=-0.5:0.01:2.5;
plot(x,f(x),'-k')
hold on
text(x_min,f(x_min)-0.6,'min:('+string(x_min)+','+string(f(x_min))+')') 
text(x_max+0.1,f(x_max),'max:('+string(x_max)+','+string(f(x_max))+')') 
plot(x_min,f(x_min),'ro')
plot(x_max,f(x_max),'gx')
xlabel('x')
ylabel('f(x)')

figure(2)
precise = 0.0001;
x=-0.5:0.01:2.5;
[x_min,x_max]=brute(f,x1,x2,precise)
plot(x,f(x),'-k')
hold on
text(x_min,f(x_min)-0.6,'min:('+string(x_min)+','+string(f(x_min))+')') 
text(x_max+0.1,f(x_max),'max:('+string(x_max)+','+string(f(x_max))+')') 
plot(x_min,f(x_min),'ro')
plot(x_max,f(x_max),'gx')
xlabel('x')
ylabel('f(x)')