function [area] = Simpson_1_3_I(f,x0,x1,n)
    xx = linspace(x0,x1,3*n-n+1);
    area = 0;
    for i = 1:2:3*(n-1)-(n-1-1)
        area = area + (xx(i+1)-xx(i))/3 ...
               *(f(xx(i))+4*f(xx(i+1))+f(xx(i+2)));
    end
end