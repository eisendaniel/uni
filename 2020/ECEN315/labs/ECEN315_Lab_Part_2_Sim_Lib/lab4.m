clear;
clc;
Angles = [0 4.003 8.005 12.01 16.01 20.01 24.02 28.02 32.02 36.02 40.03 44.03 48.03]';
Voltages = [0 1 2 3 4 5 6 7 8 9 10 11 12]';
G = mean(gradient(Angles))
hold on
plot(Voltages, Angles)
plot(Voltages,G*Voltages) 



