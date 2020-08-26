close all
clear all
format long

x = [1,2,3,5,7,8];
y = [3,6,19,99,291,444];

n_t = 3; 
M = [];
l = [];
for n = 2:n_t+1 
    cof = Lagrange_pol(x,y,n);
    yy = 0;
    x_it = 1:0.01:8;
    x_point = 4
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
    plot(x_point,yy(find(x_it==4)),'o')
    text(x_point,yy(find(x_it==4))+n*n*2+5,'order =' + string(n-1)+' ('+string(x_point)+','+string(yy(find(x_it==4)))+')')
    M = [M;'order =' + string(n-1)]
end
legend(l,M)

