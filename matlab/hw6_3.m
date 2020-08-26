close all
clear all
format long

m1 = 5;
m2 = 10;
ka = 0.1;
kb = 1;
kc = 0.2;
syms w
A = [ka+kb-m1*w^2, -kb;
     -kb,ka+kb-m2*w^2]
f = det(A)
root = double(solve(f));
w1 = root(1)
w2 = root(2)
B = [ka+kb-m1*w2^2, -kb;
     -kb,ka+kb-m2*w2^2];
n_v = null(B);
t = 0:0.1:50;
alpha = 1;
X = alpha .* n_v'
X1 = X(1)*sin(w2.*t);
X2 = X(2)*sin(w2.*t);

subplot('Position',[0.05 0.05 0.35 0.9]);
plot(X1,t)
set(gca,'xtick',[-1,-0.5,0,0.5])
set(gca,'YDir','reverse')
title('X1 sin wave')
subplot('Position',[0.4 0.05 0.35 0.9]);
plot(X2,t)
set(gca,'ytick',[])
set(gca,'YDir','reverse')
xlim([-1,1])
set(gca,'xtick',[-0.5,0,0.5,1])
title('X2 sin wave')

fprintf("w1 = %f , X1 = %f , X2 = %f \n",w1,X(1),X(2))

fprintf("w2 = %f , X1 = %f , X2 = %f \n",w2,X(1),X(2))