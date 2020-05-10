% stf = feedback(series(1/25, tf(1,[4 0])),1)%tf(num,den) is another way of creating a tf
% series(a,b) multiplies two blocks in series together
% feedback(c,d) does forward/(1-loop) for block c in forward path and block d in feedback path (must equal 1 if unity feedback)

s = tf('s');  % this tells Matlab that 's' is the Laplace operator rather than a matrix called s 
Vo = 4*s/(2.8*s^2+4.06*s+0.6); %this is one way of creating a transfer function (tf) - note ';' surpresses the output of a command

subplot(1,2,1); %splits the plots for ease of viewing
[x,t] = step(Vo);%numerically calculates the time response for a unit step input

thy=1.28*(exp(-0.167*t)-exp(-1.283*t)); %theoretical time response over the same time period

plot(t,x,t,thy,'*');% plots the numerical and theoretical results on the same axis, which should be labelled!
xlabel('Time t (secs)')
ylabel('Vo(t)') %add graph labels
legend({'Numerical','Theoretical'},'Location','southwest')

subplot(1,2,2); %prepares a separate subplot
bode(Vo); % reuses the transfer function for further analysis
