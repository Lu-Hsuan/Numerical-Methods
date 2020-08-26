close all
clear all
format long

eps = 1e-6
f = @(x,c) -2.*x.^6-1.5.*x.^4+10.*x+2+c
%f_b = @(x) -2.*x.^6-1.5.*x.^4+10.*x+2
x0 = 5;
c = 0;
iter = 30
error_std = 0.00
c_iter = 0
x= -2:0.01:2;
plot(x,f(x,0))
hold on
root0 = 0;
root1 = 0;
root = [];
while(1)
    x0 = 1;
    root0 = newton(f,x0,c,iter,error_std);
    break
    x0 = -1;
    root1 = newton(f,x0,c,iter,error_std);
    m1 = (f(root0+eps,0)-f(root0,0))/eps
    m2 = (f(root1+eps,0)-f(root1,0))/eps
    if(m1 >= 0 && m2 <= 0)
       max_range = root
       break
    end
    if(m1 > 0)
       root0 = root(1) 
    end
    if(m2 < 0 )
       root1 = root(2) 
    end
    root = [];
    root = [root,root0,root1];
    f_root = f(root,0);
    plot(root(1),f_root(1),'ro')
    hold on
    plot(root(2),f_root(2),'bx')
    c = c - 0.005;
    c_iter = c_iter + 1
end
xlabel('x')
ylabel('f(x)')
figure(2)
x= max_range(2)-0.01:0.0001:max_range(1)+0.01;
plot(x,f(x,0))
hold on
plot(max_range(2),f(max_range(2),0),'bx')
hold on
plot(max_range(1),f(max_range(1),0),'ro')
xlabel('x')
ylabel('f(x)')

%[x_min,x_max]=brute(f_b,0.87,0.89,0.0000001)
