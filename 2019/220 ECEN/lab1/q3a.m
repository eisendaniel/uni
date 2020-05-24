syms x
u(x) = piecewise(x<0, 0, x>=0, 1);

n = 0:10;
h = 0.7.^n;
x = (n>=0) - ((n-4)>=0);
c = conv(h,x);
stem(c);
title('u[n]-u[n-4] * 0.7^n');
xlabel('Time(n)');
ylabel('Amplitde');
