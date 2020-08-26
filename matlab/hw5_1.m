close all
clear all
format long

A = [4^2,4,1;
    2^2,2,1;
    7^2,7,1]
inv_A = inv(A)
%spectral
sp_A = norm(A,2)
sp_inv_A = norm(inv_A,2)
cond_spe = sp_A*sp_inv_A
cond_2 = cond(A,2)
%Fro
Fro_A = norm(A,'fro')
Fro_inv_A = norm(inv_A,'fro')
cond_Fro = Fro_A*Fro_inv_A
cond_Fr = cond(A,'fro')
