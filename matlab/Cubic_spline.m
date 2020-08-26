function [p] = Cubic_spline(t,y,xx,cond)
    n = length(t) - 1;
    p = [];
    f =@(x,x_o,a,b,c,d) a+b.*(x-x_o)+c.*(x-x_o).^2+d.*(x-x_o).^3
    A = zeros(n+1,n+1);
    if(cond == 'not-a-knot')
       for i=1:n
           h(i) = t(i+1)-t(i);
           if(i==1)
              yy(i) = 0;
           else
              yy(i) = (y(i+1)-y(i))/h(i) - (y(i)-y(i-1))/h(i-1); 
           end
       end
       yy(n+1) = 0;
       yy = yy.*6;
       A(1,1:3) = [-h(2),h(1)+h(2),-h(1)];
       A(n+1,n+1-2:n+1) = [-h(n),h(n-1)+h(n),-h(n-1)];
       for i = 2:n
         A(i,i-1) = h(i-1);
         A(i,i)   = 2*(h(i-1)+h(i));
         A(i,i+1) = h(i);
       end
       m = inv(A)*yy'
    end
    if(cond == 'derivative')
       for i=1:n
           h(i) = t(i+1)-t(i);
           if(i==1)
              yy(i) = (y(i+1)-y(i))/h(i) - y(1); % A = y(1)
           else
              yy(i) = (y(i+1)-y(i))/h(i) - (y(i)-y(i-1))/h(i-1); 
           end
       end
       yy(n+1) = y(n+1)-(y(n+1)-y(n))/h(n); % B = y(n+1);
       yy = yy.*6;
       A(1,1:3) = [2*h(1),h(1),0];
       A(n+1,n+1-2:n+1) = [0,h(n),2*h(n)];
       for i = 2:n
         A(i,i-1) = h(i-1);
         A(i,i)   = 2*(h(i-1)+h(i));
         A(i,i+1) = h(i);
       end
       m = inv(A)*yy'
    end
    for i=1:n
       a(i) = y(i) 
       b(i) = (y(i+1)-y(i))/h(i)-h(i)*m(i)/2-(h(i)/6)*(m(i+1)-m(i));
       c(i) = m(i)/2;
       d(i) = (m(i+1)-m(i))/(6*h(i));
       if(i == 1)
        tt = xx(xx >= t(i) & xx <= t(i+1));
       else
        tt = xx(xx > t(i) & xx <= t(i+1));
       end
       p = [p,f(tt,t(i),a(i),b(i),c(i),d(i))];
    end
end