clear;
s = tf('s');

%a
motor_pos = 0.0425/(s*(s+2.45));
opt = stepDataOptions('StepAmplitude', 5);
figure("name","Motor Position Step Reponse");
step(motor_pos,opt,0.2)
figure("name","Motor Position Poles");
pzmap(motor_pos)

%b
motor_vel = motor_pos * s; %differentiate
opt = stepDataOptions('StepAmplitude', 5);
figure("name","Motor Velocity Step Reponse");
step(motor_vel,opt)
figure("name","Motor Velocity Poles");
pzmap(motor_vel)

