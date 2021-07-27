%% 1
clc; clear;
s = tf('s');
figure()
hold on

for td = 0.000261
    D = exp(-td*s);
    P1 = pade(D,1); %0.00027
    P2 = pade(D,2); %0.000261
    bode(P2)
end

%% 2
clc;clear;
s=tf('s');
G=15/((s+1)*(s+2));
t_s = -0.177;
p_ap = pade(exp(s * t_s)) 
sampler = (1 - p_ap)/s
rlocus(G);
xlim([-6 1])
ylim([-4 4])
figure()
rlocus(sampler*G);
xlim([-6 1])
ylim([-4 4])

%% 3
clear;
s=tf('s');
phase = -inf;
fs = 1807000;
while phase < -10
    ts = 1/fs;
    sampler = (1 - pade(exp(s * -ts)))/s;
    wc = 2*pi*(fs/20);
    Gb = (wc^2) / (s^2 + sqrt(2)*wc*s+wc^2);
    [gain, phase] = bode(sampler*Gb,2*pi*10000);
    fs = fs+1;
end
gain
phase
fs