function [x]= golden_section(f,x1,x2,iter)
    gr = (sqrt(5) + 1) / 2;
    x3 = x1+(x2-x1)/gr
    x4 = x2-(x2-x1)/gr
    for n=1:iter
        n
        if(f(x3)>f(x4))
            x2 = x3;
        else
            x1 = x4;
        end
        x3 = x1+(x2-x1)/gr
        x4 = x2-(x2-x1)/gr
    end
    x = (x3+x4)/2
end