function [d,iter] = Romberg_I(f,x0,x1,maxit,es)
    %d = zeros(n,n);
    n_h = 1;
    i = 1;
    d(1,1) =  trap_I(f,x0,x1,1);
    iter = 1;
    while iter < maxit
        n_h = 2^iter;
        d(iter+1,1) =  trap_I(f,x0,x1,n_h);
        for i = 2:iter+1
            d(iter+1,i) = (4^(i-1)*d(iter+1,i-1)-d(iter,i-1))/(4^(i-1)-1);
        end
        ea = abs(d(iter+1,iter+1)-d(iter,iter))/d(iter,iter);
        iter = iter + 1;
        if(ea <= es)
            break;
        end
    end
end