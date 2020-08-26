function [area] = trap_I(f,x0,x1,n)
    xx = linspace(x0,x1,n+1);
    area = 0;
    for i = 1:n
        area = area + (xx(i+1)-xx(i))*0.5*(f(xx(i+1))+f(xx(i)));
    end
end