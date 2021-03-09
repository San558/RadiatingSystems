% Patch antenna design for a Resonant frequenct = 2.4GHz
%% Patch Antenna physical parameters calculation
c = 3e8;
fr = 25e9;
Er = 4.3;
h = 3e-3;
W = (c/(2*fr))*(sqrt(2/(Er+1)));
Eref = ((Er+1)/2)+((Er-1)/2)*((1+12*(h/W))^(-1/2));
delL = h*0.412*(((Eref + 0.3)*((W/h) + 0.264))/((Eref - 0.258)*((W/h) + 0.8)));
L = (c / (2*fr*sqrt(Eref))) - (2*delL);
Lg = (6*h)+L;
Wg = (6*h)+W;

%% Patch Antenna Electric field distribution\
Lambda = c/fr;
K = (2*pi)/Lambda;
theta = 0:0.01*pi:2*pi;
phi = 0:0.01*pi:2*pi;
e1 = (sin((K*W.*sin(theta).*sin(phi))/2)) .* (cos((K*L/2).*sin(theta).*cos(phi)));
e2 = ((K*W.*sin(theta).*cos(phi))/2);

Et = (e1./e2).*cos(phi);
Ep = -(e1./e2).*cos(theta).*sin(phi);

Field = sqrt((Et.*Et)+(Ep.*Ep));

polar(theta,Field);