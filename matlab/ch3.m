clc,clf,clear
g=9.81; theta0=45*pi/180; v0=5;
t(1)=0;x=[0];y=[0];
plot(x,y,'o','MarkerFaceColor','b','MarkerSize',8)
%axis([0 10 0 0.8])
M(1)=getframe;
dt=1/128;
x0 = 0;
y0 = 0;
in = 1;
for j = 2:1000
  t(j)=t(j-1)+dt;
  x= [x,x0 + in*(v0*cos(theta0)*t(j))];
  y= [y,y0 + in*(v0*sin(theta0)*t(j)-0.5*g*t(j)^2)];
  plot(x,y,'o','MarkerFaceColor','b','MarkerSize',8)
  %axis([0 3 -1 0.8])
  if (y(j) <= 0)
     in = in/1.2;
     t(j) = 0; 
     x0 = x(j);
     y0 = y(j);
  end
  axis([0 10 0 0.8])
  M(j)=getframe;
  
end
pause
movie(M,1)
