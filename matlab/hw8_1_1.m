close all
clear all
format long

f = @(x) (8+4.*cos(x))

x0 = 0; x1 = 0.5*pi;

%% (a)
syms x
f_s = 8+4*cos(x);
f_s_I = int(f_s)
f_I = matlabFunction(f_s_I)
area_a = f_I(x1) - f_I(x0)
fprintf("(a)real: %6.15f  \n",area_a)
%% (b)
area_b = trap_I(f,x0,x1,1);
error = abs(area_a - area_b)/area_a;
fprintf("(b) n=1: %6.15f  , error = %6.15f\n",area_b,error)
%% (c)
n = 2;
area_c_2 = trap_I(f,x0,x1,n);
error = abs(area_a - area_c_2)/area_a;
fprintf("(c) n=2: %6.15f  , error = %6.15f \n",area_c_2,error)

n = 4;
area_c_2 = trap_I(f,x0,x1,n);
error = abs(area_a - area_c_2)/area_a;
fprintf("    n=4: %6.15f  , error = %6.15f\n",area_c_2,error)
%% (d)
n = 1;
area_d = Simpson_1_3_I(f,x0,x1,n);
error = abs(area_a - area_d)/area_a;
fprintf("(d) n=1: %6.15f  , error = %6.15f\n",area_d,error)
%% (e)
n = 4;
area_e = Simpson_1_3_I(f,x0,x1,n);
error = abs(area_a - area_e)/area_a;
fprintf("(e) n=4: %6.15f  , error = %6.15f\n",area_e,error)
%% (f)
n = 1;
area_f = Simpson_3_8_I(f,x0,x1,n);
error = abs(area_a - area_f)/area_a;
fprintf("(f) n=1: %6.15f  , error = %6.15f\n",area_f,error)
%% (g)
n = 5;
area_g = Simpson_3_8_I(f,x0,x1,n);
error = abs(area_a - area_g)/area_a;
fprintf("(g) n=5: %6.15f  , error = %6.15f\n",area_g,error)