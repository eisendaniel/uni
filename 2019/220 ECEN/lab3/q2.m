clear;
clc;

%% A
Fs = 100;
T = 10;
Ts = 1/Fs;
t = -T/2:Ts:T/2-Ts;
w0 = (2.*pi)./10;

u = t>=0;

x_vec = [sin(w0.*t); exp(1j.*w0.*t); (t==0); u; (t==2); exp(-2.*t).*u; square(w0*(t+2.5))];

%signal
sig = 5; %changes occording to whic function from the vector i'm plotting
figure(sig)
x = x_vec(sig,:);
sig = subplot(3,1,1);
plot(t,x)
%changes occording to whic function from the vector i'm plotting
title('$$x(t) = \delta (t-2)$$','interpreter','latex')
xlabel(sig,'t');
    
%FT
X = fftshift(fft(x));
N = length(x);
w = (-N/2:N/2-1)*(Fs/N)*2*pi;

%spectrum.
mag=subplot(3,1,2);
plot(w,abs(X)); 
title('$$|X(j\omega)|$$','interpreter','latex')
xlabel(mag,'w');
ylabel(mag,'Magnitude');
xlim(mag, [-10,10]);

phs=subplot(3,1,3);
plot(w,angle(X));
title('$$\angle X(j\omega)$$','interpreter','latex')
xlabel(phs,'w');
ylabel(phs,'Magnitude');
xlim(phs, [-10,10]);
