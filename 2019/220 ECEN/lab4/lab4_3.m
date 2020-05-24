clc
clear

%% 3a
figure(1)
subplot(3,1,1);
data = importdata('Temperature.txt');
n = data(:,1);
x = data(:,2);
plot(n,x);
title("Temperature data")
xlabel("Years")
ylabel("Deviation (^{o}C)")

M = 500;
k=(0:M)';
omega=-pi+(pi--pi)*k/M;

X = dtft(x,n,omega);
subplot(3,1,2);
plot(omega, abs(X));
xlim([-pi pi])
title("| X(e^{jw}) |");
xlabel("\omega")
ylabel("amplitude")
subplot(3,1,3);
plot(omega, angle(X));
xlim([-pi pi])
title("\angle X(e^{jw})");
xlabel("\omega")
ylabel("amplitude")



%% 3b
figure(2)
Havs = [];
for m = [1,5,10,20]
    Hav = (1/m)*exp(-1j.*omega.*(m-1)/2).*(sin(omega.*m/2)./sin(omega./2));
    Hav((length(omega)-1)/2+1) = 1;
    Havs = [Havs Hav];
end


subplot(1,2,1);
hold on;
for i=1:length(Havs(1,:))
    Hav = Havs(:,i);
    plot(omega, abs(Hav));
    xlim([-pi pi])
end
hold off;
title("| H(e^{jw}) | at diff. m");
xlabel("\omega")
ylabel("amplitude")


subplot(1,2,2);
hold on;
for i=1:length(Havs(1,:))
    Hav = Havs(:,i);
    plot(omega, angle(Hav));
    xlim([-pi pi])
end
hold off;
title("\angle H(e^{jw}) at diff. m");
xlabel("\omega")
ylabel("amplitude")

%% 3c
figure(3)
subplot(3,1,1);
hold on;
for i=1:length(Havs(1,:))
    Hav = Havs(:,i);
    Y = Hav.*X;
    y = invdtft(Y, n, omega);
    plot(n,y);
end
hold off;
title("Y^{-1}(e^{jw}) at differing m")
xlabel("Years")
ylabel("Deviation (^{o}C)")
legend("m=1","m=5","m=10","m=20");
subplot(3,1,2)
hold on;
for i=1:length(Havs(1,:))
    Hav = Havs(:,i);
    Y = Hav.*X;
    y = invdtft(Y, n, omega);
    plot(omega, abs(Y));
    xlim([-pi pi]);
end
hold off;
title("| Y(e^{jw}) |");
xlabel("\omega")
ylabel("amplitude")
subplot(3,1,3)
hold on;
for i=1:length(Havs(1,:))
    Hav = Havs(:,i);
    Y = Hav.*X;
    y = invdtft(Y, n, omega);
    plot(omega, angle(Y));
    xlim([-pi pi])
end
hold off;
title("\angle Y(e^{jw})");
xlabel("\omega")
ylabel("amplitude")
