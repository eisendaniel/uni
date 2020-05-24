%2A
n = 0:5;
x1 = 0.8.^n;
x2 = cos(n);

%input 1 sys a,b
subplot(2,3,1);
stem(n,x1);
title('input x[n] = 0.8^n');
xlabel('Time(n)');
ylabel('Amplitde');

%sys a
subplot(2,3,2);
stem(n,2.^x1)
title('output sysA y[n] = 2^x[n]');
xlabel('Time(n)');
ylabel('Amplitde');
%sys b

subplot(2,3,3);
stem(n,n.*x1)
title('output sysB y[n] = nx[n]');
xlabel('Time(n)');
ylabel('Amplitde');

%input 2 sys a,b
subplot(2,3,4);
stem(n,x2);
title('input x[n] = cos[n]')
xlabel('Time(n)');
ylabel('Amplitde');

%sys a
subplot(2,3,5);
stem(n,2.^x2)
title('output sysA y[n] = 2^x[n]');
xlabel('Time(n)');
ylabel('Amplitde');

%sys b
subplot(2,3,6);
stem(n,n.*x2)
title('output sysB y[n] = nx[n]')
xlabel('Time(n)');
ylabel('Amplitde');

