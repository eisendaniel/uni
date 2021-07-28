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
nyquist(G3*2)

figure()
G4 = (3*(s+1)) / (s*(s-10));
nyquist(G4)

%% 2a
clc;clear;
s = tf('s');
G = 4/(s+2);
G.IODelay = 0.2;
figure()
nyquist(G)
hold on
nyquist(2.2940*G)
hold off

%% 2b
clc;clear;
s = tf('s');
G = 4/(s+2);
G.IODelay = 0.2;
figure()
step(feedback(G,1))
figure()
step(feedback(G, 2.2940))   

%% 2c
clc;clear;
s = tf('s');
figure();
G = 4/(s+2);
G.IODelay = 0.61;
nyquist(G)

%% 3
clc;clear;
s = tf('s');
G = 1000 / (s+1000);
G_tus = c2d(G, 0.0001, 'tustin');
opt = c2dOptions('Method', 'tustin', 'PrewarpFrequency', 1000);
G_tus_pw = c2d(G, 0.0001, opt);
G_imp = c2d(G, 0.0001, 'impulse');
G_mat = c2d(G, 0.0001, 'matched');

figure(1)
hold on
impulse(G)

figure(2)
hold on
step(G)
    
figure(3)
hold on
bode(G)

for sys = [G_tus G_tus_pw G_imp G_mat]
    figure(1)
    impulse(sys)
    
    figure(2)
    step(sys)
    
    figure(3)
    bode(sys)
end