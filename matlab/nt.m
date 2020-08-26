
f = @(x,c) cos(x)-x.^0.5
c = 0;
x0 = 0.5;
iter = 50;
error_std = 0;
root = newton(f,x0,c,iter,error_std)
x=0:0.01:100;
plot(x,f(x),'-k')

hold on
plot(root,f(root),'ro')