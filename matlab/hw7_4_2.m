close all
clear all
format long

f = @(x) 1./(1+25.*x.^2);
%x = -1:0.5:1;
x = linspace(-1,1,20)
y = f(x);

n = length(x); %order 4
M = [];
l = [];
cof = Lagrange_pol(x,y,n);
yy = 0;
x_it = -1:0.01:1;
for i = 1:n
    p = 1;
    for j = 1:n
        if(i~=j)
            p  = p.*(x_it-x(j)); % x-x0 ...
        end
    end
    yy = yy + p.*cof(1,i); % a1 *(x-x0)...
end
l=[l;plot(x_it,yy,'-')]
xlabel('x')
ylabel('f(x)')
hold on 
for i = 1:length(x)
    y_ = yy(find(x_it==x(i)))
    plot(x(i),y_,'k+')
    hold on
    text(x(i),y_+0.05,' ('+string(x(i))+','+string(y_)+')') 
end
M = [M;'order =' + string(n-1)]
legend(l,M)
xlim([-1,1])
ylim([-0.5,1.1])

