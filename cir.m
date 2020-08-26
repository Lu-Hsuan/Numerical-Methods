clear
close
format long
n = 1e6;
a_n_p = [1:4:1+4*(n/2)];
a_n_n = [-3:-4:-3-4*(n/2-1)];
a_n_p = 1./a_n_p;
a_n_n = 1./a_n_n;
pi = 4*(sum(a_n_p) + sum(a_n_n))