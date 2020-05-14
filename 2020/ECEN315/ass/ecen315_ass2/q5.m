%% a
clear;
clc;
s = tf('s');

G = 6 / (s*(s+6)*(s+1));

for c = (5:0.01:10)
    if stepinfo(feedback(c*G,1)).PeakTime >= Inf
        fprintf("Minimum series gain > %f\n", c)
        linearSystemAnalyzer(feedback(c*G,1), feedback((c+0.1)*G,1))
        break;
    end
end
    
%% b
clear;
clc;
s = tf('s');

G = 6 / (s*(s+6)*(s+1));
%Lead Lag: C((s-z)/(s-p))
LL = (s+1)/(s-1);
linearSystemAnalyzer(feedback(LL*G,1))
figure(1)
hold on
pzmap(feedback(G,1))
pzmap(feedback(LL*G,1))
hold off