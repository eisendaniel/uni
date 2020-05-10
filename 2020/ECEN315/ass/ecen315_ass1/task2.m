clear;

s = tf('s');

T0 = 25;
T1 = 200;
m=10000;
A=0.33;

C=0.45;
h=100;

sys = (h*A)/(m*C*s + h*A);

opt = stepDataOptions('StepAmplitude', T1);

figure(2);
[x,t] = step(sys,opt);

init = T0*exp((-h*A*t)/(m*C));

plot(t,x+init)