clear;
clc;

Ra = 6.3;
La = 0.797;
Kb = 0.0043;
Kt = Kb;
Dm = 0.00000553;
Jm = 0.00000241;

g = Kt/(Jm*La);
a = 1;
b = (Jm*Ra + Dm*La)/(Jm*La);
c = (Ra*Dm + Kb*Kt) / (Jm*La);

motor_prop = tf(g, [a b c])

figure(1);
hold on
for V = [1 2 3 4 5 6]
step(V*motor_prop)
ylabel("Angular Velocity (rad/s)")
ssg = (g/c);
fprintf("Steady state gain for V = %d: %f\n",V, ssg);
end
