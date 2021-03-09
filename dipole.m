f = 88e6;
c = 3e8;
lambda = c/f;
L = 3*lambda;
phi = 0:0.01*pi:2*pi;
beta_l = (2*pi/lambda)*L;
E = abs((cos(beta_l/2.*cos(phi))-cos(beta_l/2))./sin(phi));
Emax = max(E);
Enorm = E./Emax;
polar(phi,Enorm);
title('Radiation Pattern');
%Eavg = (1/2)*integral(E,0,2pi)