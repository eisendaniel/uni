%% setup
clear;
clc;
sim_file = 'openloopcontrol';
supply = 'openloopcontrol/supply';
driver = 'openloopcontrol/driver';
pwm = 'openloopcontrol/PWM';
target = 'openloopcontrol/Angle';
%% Direct DC vs Angle
load_system(sim_file);
steady_angle = [];
voltages = linspace(1,12,12);
for V = voltages
    set_param(supply, 'V', num2str(V));
    sim(sim_file, 10)
    steady_angle = [steady_angle angles(end)];
end
hold on;
xlabel("DC Voltage (V)")
ylabel("Steady State Angle (deg)")
plot(voltages,steady_angle)
A_to_V = steady_angle'\voltages'
plot(voltages, (1/A_to_V)*voltages)
%% PWN Driven
pwm_ref = (0:25:250);
duty_cycle = [0.0 0.094 0.187 0.315 0.421 0.501 0.589 0.675 0.746 0.840 0.933];
eff_dc = duty_cycle * 12.0;
P_to_D = pwm_ref'\duty_cycle' %PWM reference to Duty cycle 
figure;
hold on;
plot(pwm_ref,eff_dc);
plot(pwm_ref, pwm_ref.*(P_to_D)*12.0)
legend("Measured", "Linearised Relationship")
xlabel("PWM Vref")
ylabel("Effective DC voltage (V)")

load_system(sim_file);
steady_angle = [];
voltages = linspace(1,12,12);
pwm_values = voltages .* ((1/12.0)*(1/P_to_D));
for P = pwm_values
    set_param(pwm, 'Value', num2str(P));
    sim(sim_file, 10)
    steady_angle = [steady_angle angles(end)];
end
figure;
plot(pwm_values,steady_angle)
xlabel("PWM refernce values")
ylabel("Steady State Angle (deg)")
%% Open Loop control
hold on
for error = ["off", "on"]
    set_param(driver, 'E', error);
    sim(sim_file, 10)
    plot(tout, angles,'DisplayName',error);
    stepinfo(angles,tout)
    if error == "off"
        nonerrored = [nonerrored angles(end)]
    end
    if error == "on"
        errored = [errored angles(end)]
    end
end

xlabel("Time (s)")
ylabel("Angle (deg)")
title("System Response : Error/Errorless Comparison")
%% Multi error measurments
load_system(sim_file);
sse = []
for A = [15 20 30]
    set_param(target, 'Value', num2str(A))
    set_param(driver, 'E', "on");
    sim(sim_file, 10)
    sse = [sse (A - angles(end))]
end

