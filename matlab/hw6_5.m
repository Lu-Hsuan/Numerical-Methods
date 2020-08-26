close all
clear all
format long


f = @(x,a,b,c) a+b.*x+c./x 

x = [1,2,3,4,5]
y = [2.2;2.8;3.6;4.5;5.5];
A = [ones(size(x))',x',1./x'] %*[b;a]
cof = inv(A'*A)*A'*y % b ; a
n = 0.1:0.01:7;
f_y = f(n,cof(1),cof(2),cof(3));
plot(n,f_y,'--')
hold on 
plot(x,y','o')
xlabel('x')
ylabel('y')
fprintf("a = %f , b = %f , c = %f\n",cof(1),cof(2),cof(3))