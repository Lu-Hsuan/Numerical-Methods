

x = [1,2,3,5,7,8];
y = [3,6,19,99,291,444];
[C] = newton_test(x,y,8,1)

function[C] = newton_test(X,Y,x,M)
    n = length(X);
    m = length(x);
    for t = 1 : m
        z = x(t);
        A = zeros(n,n);
        A(:,1) = Y';
        s = 0.0; p = 1.0; q1 = 1.0; c1 = 1.0;
            for j = 2 : n
                for i = j : n
                    A(i,j) = (A(i,j-1) - A(i-1,j-1))/(X(i)-X(i-j+1));
                end
                q1 = abs(q1*(z-X(j-1)));
                c1 = c1 * j;
            end
            C = A(n, n); q1 = abs(q1*(z-X(n)));
            for k = (n-1):-1:1
                C = conv(C, poly(X(k)));
                d = length(C);
                C(d) = C(d) + A(k,k);%在最后一?，也就是常??加上新的差商
            end
    end
end