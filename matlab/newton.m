function[root] = newton(f,x0,c,iter,error_std)
    eps = 1e-6;
    for n = 1:iter
        n;
        m = (f(x0+eps,c)-f(x0,c))/eps;
        x1 = x0-f(x0,c)/m;
        error = abs(x1-x0)/x0;
        x0 = x1;
    end
    root = x1;
end