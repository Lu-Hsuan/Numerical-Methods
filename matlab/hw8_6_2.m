close all
clear all
format long

fy = @(t,y) -1e5.*y+99999.*exp(-t)



tspan = [0,2]
y0 = 0;
h = 0.1;
[y,tt] = Eulr_D_back(fy,tspan(1),tspan(2),y0,h);
figure(1)
plot(tt,y);
xlabel("t")
ylabel("y")

% syms solve
syms y(t) a
eqn = diff(y,t) == -1e5.*y+99999.*exp(-t);
cond = y(0) == 0;
ySol(t) = dsolve(eqn,cond)
func = matlabFunction(ySol)
tt= 0:0.01:2;
figure(2)
plot(tt,func(tt),'--')
xlabel("t")
ylabel("y")