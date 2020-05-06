stf = feedback(series(1/25, tf(1,[4 0])),1);
subplot(1,2,1);
[x,t] =step(stf);
thy=1-exp(-0.01*t);
plot(t,x,t,thy,'*');
subplot(1,2,2);
bode(stf);
