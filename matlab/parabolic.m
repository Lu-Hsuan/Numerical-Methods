function [xe]= parabolic(f,x1,x2,x3,iter)
    x_m = [x1;x2;x3];
    for n = 1:iter
        n
        f_m = f(x_m);
        ai_2 = f_m(1)*(x_m(2)^2-x_m(3)^2)+f_m(2)*(x_m(3)^2-x_m(1)^2)+f_m(3)*(x_m(1)^2-x_m(2)^2)
        ai_3 = f_m(1)*(x_m(2)-x_m(3))+f_m(2)*(x_m(3)-x_m(1))+f_m(3)*(x_m(1)-x_m(2))
        xe = ai_2/(2*ai_3)
        if(ismember(xe,x_m))
           break; 
        end
        [f_max,pos]= max(f_m,[],1);
        x_m(pos) = xe;
    end
end
