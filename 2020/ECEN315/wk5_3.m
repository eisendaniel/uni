clf; %clear all graphs
T= [0: 0.01: 20];%set up the time increments
stept = 1 + 0*t; %graph to show step response
plot(t,stept,'m');
hold on % put each graph on top of each other

for K = 1.0: 1: 10.0
d = tf(K,[1 2 4]);
[y,t]=step(d,T);%st ep response over 1 second
plot(t,y,'k');
pause(1)
end