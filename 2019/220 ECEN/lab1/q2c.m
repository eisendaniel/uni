n = 0:5;
x1 = 0.8.^n;
x2 = cos(n);

%prove by scaling
%ie y(Mx1) = Mx1

%sysB
hold on;
stem(n,n.*(3.*x1));
stem(n,3.*(n.*x1))
hold off;
title('prove by scaling sys B')
xlabel('Time(n)');
ylabel('Amplitde');
set(legend('scaled input', 'scaled output'),'Box','off');

%B in linear occording to scaling