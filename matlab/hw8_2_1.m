close all
clear all
format long

f = @(x) (exp(x).*sin(x))./(1+x.^2);
x0 = 0;x1 = 2;
n = 12;
es = 0.005;
[d2,iter] = Romberg_I(f,x0,x1,n,es)
str = [];
str_r = [];
for i = 1:iter
    str = [str;'O_'+string(2*i)+'_'];
    str_r = [str_r,'n ='+string(2^(i-1))];
end
T = array2table(round(d2,12));
for i = 1:iter
  T.Properties.VariableNames{i} = char((str(i)));
   T.Properties.RowNames{i} = char(str_r(i));
end
T