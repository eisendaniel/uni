clear;
clc;

%% A
Fs = 10000000; %samples per second
T = 10;
Ts = 1/Fs; %seconds per sample
t = -T/2:Ts:T/2-Ts;

%signal
w0 = (2.*pi)./10;
x = cos(w0.*t);

figure()
sig = subplot(3,1,1);
plot(t,x)
title('$$x(t) = cos(\frac{2\pi t}{10})$$','interpreter','latex')
xlabel(sig,'t');


%% B

%FT
X = fft(x);

f = (0:length(X)-1)*Fs/length(X);
N = length(f);
w = (-N/2:N/2-1)*(Fs/N)*2*pi;
Xshift = fftshift(X);

mag = subplot(3,1,2);
plot(w,abs(Xshift))
title('$$|X(j\omega)|$$','interpreter','latex')
xlabel(mag,'w');
ylabel(mag,'Magnitude');
xlim(mag, [-10,10])

phs = subplot(3,1,3);
plot(w,angle(Xshift))
title('$$\angle X(j\omega)$$','interpreter','latex')
xlabel(phs,'w');
ylabel(phs,'Magnitude');
xlim(phs, [-10,10])
