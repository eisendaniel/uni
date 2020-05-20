%%import Data
clear;
clc;

opts = delimitedTextImportOptions("NumVariables", 2);

% Specify range and delimiter
opts.DataLines = [1, Inf];
opts.Delimiter = "\t";

% Specify column names and types
opts.VariableNames = ["t", "x"];
opts.VariableTypes = ["double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
Data = readtable("Data.csv", opts);
t = Data.t;
x = Data.x;
clear opts

%%
figure;
hold on
plot(t,x)
A = 256; %max sensor value
B = 0.688;
y = A*exp(-B*t);
plot(t,y)
ylim([-255 256])
hold off
%%
m = 0.168;
g = 9.8;
d = 0.14;

w = (2*pi)/(1.43-0.47);
Jp = (m*g*d)/(w^2 + B^2);
c = 2*Jp*B;

numerator = 1/Jp
denominator = [1 c/Jp (m*g*d)/Jp]

pendulum = tf(numerator,denominator)
stepplot(pendulum)
%%
Ra = 6.3;
La = 0.797;
Kb = 0.0043;
Kt = Kb;
Dm = 0.00000553;
Jm = 0.00000241;

numerator = Kt/(Jm*La);
denom_a = 1;
denom_b = (Jm*Ra + Dm*La)/(Jm*La);
denom_c = (Ra*Dm + Kb*Kt) / (Jm*La);

motor_prop = tf(numerator, [denom_a denom_b denom_c])

Kp = 0.0053;
r = 0.165;

sys = motor_prop .* Kp .* r .* pendulum

figure(1);
hold on
for V = [1 3 4 5]
step(V*sys)
end

