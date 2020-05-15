clear;
clc;

s = tf('s');

figure(1);
hold on
for a = [1 2 4 8]
    sys = a /(s^2 + 4*s + a);
    figure(1);
    step(sys,25);
    [Wn, Z] = damp(sys); %To get T1 and T2 
    T1 = 1/Wn(1)*Z(1);
    T2 = 1/Wn(2)*Z(2);
    T = sqrt(T1*T2);
    fprintf("\nFor A = %d:\nT1 = %f T2 = %f\nT = %f\nTs = %f\n",...
        a, T1, T2, T,...
        stepinfo(sys).SettlingTime)
    
end
legend('a = 1', 'a = 2', 'a = 4', 'a = 8');
hold off;

figure(2);
hold on
for a = [1 2 4 8]
    sys = a /(s^2 + 4*s + a);
    [x,t] = step(sys,25);
    pzmap(sys)
end
legend('a = 1', 'a = 2', 'a = 4', 'a = 8');
hold off;



