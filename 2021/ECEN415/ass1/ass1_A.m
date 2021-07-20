%%1
clc;clear;
s = tf('s');
G1 = (20*(s^2+s+0.5)) / (s*(s+1)*(s+10))
G2 = (20*(s^2+s+0.5)) / (s*(s-1)*(s+10))
G3 = (s^2+3) / (s+1)^2
G4 = (3*(s+1)) / (s*(s-10))

%%2
clc;clear;
s = tf('s');
G = zpk([], -2,4);
GG = 4 / (s+2);
G.IODelay = 0.2;
GG.IODelay = 0.2;