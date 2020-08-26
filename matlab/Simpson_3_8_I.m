function [area] = Simpson_3_8_I(f,x0,x1,n)
    xx = linspace(x0,x1,4*n-n+1);
    area = 0;
    for i = 1:3:4*(n-1)-(n-1-1)
        area = area + (xx(i+1)-xx(i))*3/8 ...
               *(f(xx(i))+3*f(xx(i+1))+3*f(xx(i+2))+f(xx(i+3)));
    end
end