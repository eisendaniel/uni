clear
clc

T = 3;
t = 0:0.01:3;
x = exp(-t);
w = (2.*pi)./T;
K = [1 5 10 30]; 
mag = [];
phs = [];

subplot(4,1,[1 2]);

plot(t,x);
hold on;
for n=1:length(K)
    hat = 0;
    for k=-K(n):K(n)
        F = @(t)(exp(-t).*exp(-1j.*k.*w.*t)); 
        ak = 1/T.*integral(F,0,T);
        hat = hat + (ak .* exp(1j.*k.*w.*t));
       
        if K(n) == 10
            mag = [mag, abs(ak)];
            phs = [phs, rad2deg(angle(ak))];
        end
    end
    plot(t,hat);
end
xlabel('t');
ylabel('x(t)');
legend('CT', 'K=1','K=5','K=10','K=30')
hold off;

p2 = subplot(4,1,3);
k10 = -10:10;
stem(k10, mag);
xlabel(p2,'k');
ylabel(p2,'mag');
legend(p2,'Magnitudes of a_k')


p3 = subplot(4,1,4);
k10 = -10:10;
stem(k10, phs);
xlabel(p3,'k');
ylabel(p3,'phase (deg)');
legend(p3,'Phases of a_k')
