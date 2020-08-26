function [d] = Romberg(f,x0,x1,n,es)
    %d = zeros(n,n);
    n_h = 4;
    for i = 1:n
       d(i,1) =  trap_I(f,x0,x1,2^(i-1));
    end
    for i = 2:n
        for j = i:n
            d(j,i) = (n_h*d(j,i-1)-d(j-1,i-1))/(n_h-1);
        end
        n_h = n_h * 4;
    end
end