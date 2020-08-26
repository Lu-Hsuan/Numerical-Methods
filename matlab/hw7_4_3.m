close all
clear all
format long

f = @(x) 1./(1+25.*x.^2);
x = -1:0.5:1;
y = f(x);
cof = Newton_interpo(x,y);

n_t = 4; % order


for n = 2:n_t+1 % a1~an
    M = [];
    l = [];
    subplot(2,2,n-1);
    
    yy = cof(1,1);
    x_it = -1:0.01:1;
    x_point = 0.8
    for i = 2:n
        p = 1;
        for j = 1:i-1
           p  = p.*(x_it-x(j)); % x-x0 ...
        end
        yy = yy + p.*cof(1,i); % a1 *(x-x0)...
    end
    l=[l;plot(x_it,yy,'-')];
    xlabel('x')
    ylabel('f(x)')
    hold on 
    plot(x_point,yy(find(x_it==x_point)),'o')
    hold on
    text(x_point,yy(find(x_it==x_point)),'order =' + string(n-1)+' ('+string(x_point)+','+string(yy(find(x_it==x_point)))+')\rightarrow', ...,
        'HorizontalAlignment','right','FontSize',12)
    M = [M;'order =' + string(n-1)];
%     if(n==4)
%         for i =1:length(x)
%             y_ = yy(find(x_it == x(i)));
%             plot(x(i),y_,'^')
%             hold on
%             text(x(i)-0.2,y_+30,'('+string(x(i))+','+string(y_)+')') 
%         end
%     end
    %legend(l,M,'Location','best')
    title('order'+string(n-1))
end

