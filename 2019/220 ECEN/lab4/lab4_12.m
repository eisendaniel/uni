clc
clear
%% 1a
M = 1000;
omega0=-2*pi;
omegaM=2*pi;
k=(0:M)';
omega=omega0+(omegaM-omega0)*k/M;
%% 1b
sig = subplot(2,2,1);
x = [-3,2,6,6,4]';
n = [0:length(x)-1]'-3;
stem(n,x);
title("x[n]");
xlabel("n");

X = dtft(x,n,omega);
mag = subplot(2,2,2);
plot(omega, abs(X));
xlim([-2*pi 2*pi])
title("| X(e^{jw}) |");
xlabel("\omega")
ylabel("amplitude")

phs = subplot(2,2,4);
plot(omega, angle(X));
xlim([-2*pi 2*pi])
title("\angle X(e^{jw})");
xlabel("\omega")
ylabel("amplitude")
%% 2a
reconstr_sig = subplot(2,2,3);
x_inv = invdtft(X, n, omega);
hold on;
stem(n,x_inv);
stem(n,x);
hold off;
title("x[n] vs X^{-1}(e^{jw})");
xlabel("n");
legend("Orignal signal","Inversed Transform")
