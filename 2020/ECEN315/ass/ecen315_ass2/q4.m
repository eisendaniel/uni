clear;
clc;
s = tf('s');

% Constants
a=1;
b=8;
k=10.8E8;
J=10.8E8;

%a
controller = k*(s+a)/(s+b);
spacecraft = 1/(J*s^2);
G = feedback(controller*spacecraft,1);


%Percent reduction
spacecraft1 = 1/((J*0.8)*s^2);
spacecraft2 = 1/((J*0.5)*s^2);

G1 = feedback(controller*spacecraft1,1);
G2 = feedback(controller*spacecraft2,1);

% degree input
G=G*10;
G1=G1*10;
G2=G2*10;

%plotting b and c
linearSystemAnalyzer(G,G1,G2)

