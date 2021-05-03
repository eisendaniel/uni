%% 5
clear;clc;
load("q5.mat"); % has Force/Strain table and diameter values
%%
A = pi*(d/2)^2;
Stress = Force./A;
%%
figure();
plot(Strain,Stress);
xlabel("Strain");
ylabel("Stress");
title("Stress-Strain Diagram");
