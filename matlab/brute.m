function [x_min,x_max]= brute(f,x1,x2,precise)
    x_range = x1:precise:x2;
    f_m = f(x_range);
    [f_min,pos_min] = min(f_m);
    [f_max,pos_max] = max(f_m);
    x_min = x_range(pos_min);
    x_max = x_range(pos_max);
end