%% 1
clc;clear;
s = tf('s');
figure()
G1 = (20*(s^2+s+0.5)) / (s*(s+1)*(s+10));
nyquist(G1)

figure()
G2 = (20*(s^2+s+0.5)) / (s*(s-1)*(s+10));
nyquist(G2)

figure()
G3 = (s^2+3) / (s+1)^2;
nyquist(G3)

figure()
G4 = (3*(s+1)) / (s*(s-10));
nyquist(G4)

%% 2
clc;clear;
G = zpk([], -2,4);
G.IODelay = 0.2;

%% 3
clc;clear;
s = tf('s');
G = 1000 / (s+1000);
figure();
impulse(G)
figure();
step(G)
figure();
bode(G);