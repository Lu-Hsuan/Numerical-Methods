function [y,tt] = Eulr_D_back(fy,t0,t1,y0,h)
    tt = t0:h:t1;
    n = length(tt);
    y = y0*ones(n,1);
    iter = 50;
    for i = 1:n-1
        f_z = @(y_1) y_1-h.*fy(tt(i+1),y_1)-y(i);
        y(i+1) = newton_back(f_z,y(i),iter);
    end
end