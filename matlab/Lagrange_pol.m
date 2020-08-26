function [d] = Lagrange_pol(x,y,n)
    %n = length(y);
    d = y
    for i = 1:n
        for j = 1:n
            if(j ~= i)
                d(1,i) = d(1,i)/(x(i)-x(j))
            end
        end
    end
end