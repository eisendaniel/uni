n = 0:5;
x1 = 0.8.^n;
x2 = cos(n);

%prove linear by summation
%ie y(x1+x2) = y1+y2

%sysA
subplot(2,1,1);
hold on;
stem(n,2.^(x1+x2));
stem(n,(2.^x1) + (2.^x2));
hold off;
title('prove linear by summation sys A');
set(legend('summed inputs', 'summed outputs'),'Box','off');
xlabel('Time(n)');
ylabel('Amplitde');
%A is non-linear occording to summation

%sysB
subplot(2,1,2);
hold on;
stem(n,n.*(x1+x2));
stem(n,(n.*x1) + (n.*x2));
hold off;
title('prove linear by summation sys B');
set(legend('summed inputs', 'summed outputs'),'Box','off');
xlabel('Time(n)');
ylabel('Amplitde');
%B is linear occording to summation

