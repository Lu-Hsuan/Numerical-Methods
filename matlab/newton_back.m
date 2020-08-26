%function[root] = newton_back(f,x0,c,dy,h,t,iter)
function[root] = newton_back(f,x0,iter)
    eps = 1e-6;
    for n = 1:iter
        n;
        m = (f(x0+eps)-f(x0))/eps;
        x1 = x0-f(x0)/m;
        error = abs(x1-x0)/x0;
        x0 = x1;
    end
    root = x1;
end