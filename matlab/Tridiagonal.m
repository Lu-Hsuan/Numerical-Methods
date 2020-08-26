function [X]=Tridiagonal(e,f,g,r)
    n = size(f,2)
    X = []
    for k = 2:n
        factor = e(k)/f(k-1);
        f(k) = f(k) - factor*g(k-1);
        r(k) = r(k) - factor*r(k-1);
    end
    X(n) = r(n)/f(n);
    for k = n-1:-1:1
       X(k) = (r(k)-g(k)*X(k+1))/f(k) 
    end
end