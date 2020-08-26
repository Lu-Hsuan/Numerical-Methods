close all
clear all
format long

x = [1,2,3,5,7,8];
y = [3,6,19,99,291,444];
cof = Newton_interpo(x,y);

n_t = 4; % order
M = [];
l = [];
for n = 2:n_t+1 % a1~an
    yy = cof(1,1);
    x_it = 1:0.01:8;
    x_point = 4
    for i = 2:n
        p = 1;
        for j = 1:i-1
           p  = p.*(x_it-x(j)) % x-x0 ...
        end
        yy = yy + p.*cof(1,i); % a1 *(x-x0)...
    end
    if(n == 5)
         l=[l;plot(x_it,yy,'--')]
    else
         l=[l;plot(x_it,yy,'-')]
    end
    xlabel('x')
    ylabel('f(x)')
    hold on 
    plot(x_point,yy(find(x_it==4)),'o')
    text(x_point,yy(find(x_it==4))+n*n*2+5,'order =' + string(n-1)+' ('+string(x_point)+','+string(yy(find(x_it==4)))+')')
    M = [M;'order =' + string(n-1)]
    if(n==4)
        for i =1:length(x)
            y_ = yy(find(x_it == x(i)));
            plot(x(i),y_,'^')
            hold on
            text(x(i)-0.2,y_+30,'('+string(x(i))+','+string(y_)+')') 
        end
    end
end
legend(l,M)
