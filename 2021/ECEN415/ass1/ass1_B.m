%% 1
clc; clear;
s = tf('s');
figure()
hold on

for td = 0.000261
    D = exp(-td*s);
    P1 = pade(D,1); %0.00027
    P2 = pade(D,2); %0.000261
    bode(P2)
end



%% 2
clc;clear;
s=tf('s');
G=15/((s+1)*(s+2));
D=c2
figure()
root


%% 3