clear
clc

T = pi;
t = 0:0.01:T;
w = (2.*pi)./T;
x = sin(t).*exp(-t);
K = 5

power_sum = 0;
for k=-K:K
        F = @(t)sin(t).*exp(-t).*exp(-1j.*k.*w.*t); 
        ak = 1/T.*integral(F,0,T);
        
        power_sum = power_sum + abs(ak).^2;
end


F = @(t)abs(sin(t).*exp(-t)).^2;
power_integral = 1/T.*integral(F,0,T);

power_sum
power_integral