function [X]=Cramer(A,B)
    row = size(A,1);
    col = size(A,2);
    if(row ~= col)
       fprintf('row != col')
       X = [];
       return
    end
    X = [];
    d_A = det(A);
    for j = 1:col
        A_temp = A;
        for i = 1:row
            A_temp(i,j) = B(i,1);
        end
        x_ = det(A_temp)/d_A;
        X = [X;x_];
    end
end