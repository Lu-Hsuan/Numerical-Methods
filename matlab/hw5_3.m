close all
clear all
format long
i = sqrt(-1)
A = [3+2i,4;-i,1]
b = [2+i;3]

x_ans = Cramer(A,b)