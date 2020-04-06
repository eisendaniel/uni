% help lti %check you have the lti toolbox installed
% pause %press any key to advance from a pause
% s = tf('s');  % this tells Matlab that 's' is the Laplace operator rather than a matrix called s 
% G = s/(s+1)%this is one way of creating a transfer function (tf) - note ';' surpresses the output of a command
% pause
stf = feedback(series(1/25, tf(1,[4 0])),1)%tf(num,den) is another way of creating a tf
% series(a,b) multiplies two blocks in series together
% feedback(c,d) does forward/(1-loop) for block c in forward path and block d in feedback path (must equal 1 if unity feedback)

subplot(1,2,1); %splits the plots for ease of viewing
[x,t] =step(stf);%numerically calculates the time response for a unit step input

thy=1-exp(-0.01*t);%theoretical time response over the same time period

plot(t,x,t,thy,'*');% plots the numerical and theoretical results on the same axis, which should be labelled!
xlabel('Time t (secs)')
ylabel('f(t)') %add graph labels
legend({'Numerical','Theoretical'},'Location','southwest')

subplot(1,2,2); %prepares a separate subplot
bode(stf); % reuses the transfer function for further analysis
