%% lab 2 Motor + Prop Sub-System
clear;
clc;

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

figure;
hold on
for V = [1 2 3 4 5 6]
step(V*motor_prop)
ylabel("Angular Velocity (rad/s)")
ssg = (numerator/denom_c);
fprintf("Steady state gain for V = %d: %f\n",V, ssg);
end

%% import Data
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
CSV_t = Data.t;
CSV_x = Data.x;
clear opts

%% Fit decay curve
figure;
hold on
plot(CSV_t,CSV_x)
A = 256; %max sensor value
B = 0.688;
y = A*exp(-B*CSV_t);
plot(CSV_t,y)
ylim([-255 256])
ylabel("Sensor Amplitude")
xlabel("Time (seconds)")
hold off


%% Pendulum Sub-System
m = 0.168;
g = 9.8;
d = 0.14;

w = (2*pi)/(1.43-0.47);
Jp = (m*g*d)/(w^2 + B^2);
c = 2*Jp*B;

numerator = 1/Jp;
denominator = [1 c/Jp (m*g*d)/Jp];

pendulum = tf(numerator,denominator)
figure;
step(0.1*pendulum)
ylabel("Angular Displacement (rad)")
%% Combined Open loop system
Kp = 0.0053;
r = 0.165;

combined_sys = motor_prop .* Kp .* r .* pendulum

figure;
hold on
for V = [1 3 4 5]
step(V*combined_sys)
end
ylabel("Angular Displacement (rad)")
