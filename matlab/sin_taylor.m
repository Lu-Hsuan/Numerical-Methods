function [result] = sin_taylor(x,n)
    sign = 1;
    result = 0;
    fac = 1;
    x_m = x;
    for i = 1:n
       result = result + sign.*x_m./fac;
       fac = fac*(2*i)*(2*(i)+1);
       sign = sign*-1;
       x_m = x_m .* x .* x;
    end
end