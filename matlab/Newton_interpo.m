function [d] = Newton_interpo(x,y)
    cof = [];
    n = length(y);
    d = zeros(n,n);
    d(:,1) = y';
    for i = 2:n
        for j = 1:n-i+1
            d(j,i) = (d(j+1,i-1)-d(j,i-1))/(x(i+j-1)-x(j))
        end
    end
end