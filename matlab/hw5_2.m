close all
clear all
format long

A = [8,5,1;
    3,7,4;
    2,3,9]
[L,U] = lu(A)
det_A = det(L)*det(U)
