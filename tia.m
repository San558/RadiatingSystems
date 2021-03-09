clc;
close all;
clear all;

phi = 0:0.01*pi:2*pi;
c = 3e8;
f = 2e6;
lambda = c/f;
d = lambda/2;
dr = (2*pi/lambda)*d;
psi = abs(dr*cos(phi));
e = cos(psi/2);
figure;
polar(phi,e)
