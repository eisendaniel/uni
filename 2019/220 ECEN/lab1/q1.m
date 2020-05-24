%1A continuous signal

f0 = 4;				%signal frequency 
fs0=1000000;		%sample freq (very high to emu contin)
t = 0:1/fs0:1;		%spit timespace
x = sin(2*pi*f0*t);	%cont signal

%1B
fs1 = (8*f0);		%x1 sample freq
t1 = 0:1/fs1:1; 
x1 = sin(2*pi*f0*t1);

fs2= (5*f0)/2; 		%x2 sample freq
t2 = 0:1/fs2:1;
x2 = sin(2*pi*f0*t2);

plot(t,x);
hold on;
stem(t1,x1);
stem(t2,x2);
hold off;

title('1. Continuous sinusoidal signal sin(8\pit)');
xlabel('Time(s)');
ylabel('Amplitde x(t)');
h = legend('f0 = 4Hz','fs1 = 8f0','fs2 = 5f0/5');
set(h, 'Box', 'off')

