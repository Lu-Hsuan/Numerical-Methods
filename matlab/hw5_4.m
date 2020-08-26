close all
clear all
format long
i = sqrt(-1)
e = [0,-0.4,-0.4]
f = [0.8,0.8,0.8]
g = [-0.4,-0.4,0]
b = [41,25,105]

[X]=Tridiagonal(e,f,g,b)