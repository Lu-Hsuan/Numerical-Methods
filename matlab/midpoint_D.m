function [y,tt] = midpoint_D(fy,t0,t1,y0,h)
    tt = t0:h:t1;
    n = length(tt);
    y = y0*ones(n,1);
    for i = 1:n-1
        k1 = fy(tt(i),y(i));
        k2 = fy(tt(i)+0.5*h,y(i)+0.5*h*k1);
        y(i+1) = y(i) + h*(k2);
    end
end