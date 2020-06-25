clear;
clc;

Ra = 6.3;
La = 0.797;
Kb = 0.0043;
Kt = Kb;
Dm = 0.00000553;
Jm = 0.00000241;

m = 0.168;
g = 9.8;
d = 0.14;

A = 256;
B = 0.688;

w = (2*pi)/(1.43-0.47);
Jp = (m*g*d)/(w^2 + B^2);
c = 2*Jp*B;

Kp = 0.0053;
r = 0.165;

numerator = Kt/(Jm*La);
denom_a = 1;
denom_b = (Jm*Ra + Dm*La)/(Jm*La);
denom_c = (Ra*Dm + Kb*Kt) / (Jm*La);

motor_prop = tf(numerator, [denom_a denom_b denom_c]);
pendulum = tf(1/Jp,[1 c/Jp (m*g*d)/Jp]);

Kv = 0.057;
openloop = motor_prop .* Kp .* r .* pendulum * (180/pi) * Kv

closedloop = feedback(openloop,1)
figure;
hold on
step(openloop)
step(closedloop,10)
figure;
rlocus(openloop)
figure;
bode(openloop)
