close all
clear all
format long

f = @(x,b,a) b+a.*log(x) 
f_inv = @(y,b,a) exp((y-b)./a)

x = [1,2,3,4,5]
y = [0.5,2,2.9,3.5,4]'
A = [ones(size(x))',log(x)'] %*[b;a]
cof = inv(A'*A)*A'*y % b ; a
n = 0:0.01:7;
f_y = f(n,cof(1),cof(2));
plot(n,f_y,'--')
hold on 
plot(x,y','o')
x_p = 2.6;
y_p = f(x_p,cof(1),cof(2))
plot(x_p,y_p,'rx')
xlabel('x')
ylabel('y')
fprintf("a = %f , b = %f\n",cof(2),cof(1))
fprintf("x=2.6 , y_predict = %f\n",y_p)