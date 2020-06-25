%% 1a
clear;
s = tf('s');
a = (s^2 - 4*s + 8)/(s^2 + 4*s + 3)
b = (s + 4)/(s*(s+6)*(s+3)*(s+1))

%% 1b
clear;
s = tf('s');
g = (s^2 + 10*s + 24)/(s^2 + 3*s + 2)

%% 1c
clear;
s = tf('s');
g = 1/((s+1)*(s+4)*(s+(3+2i))*(s+(3-2i)))

%% 2a
clear;
s = tf('s');
g = (s+300)/(s*(s+10))
bode(g)

%% 2b
clear;
s = tf('s');
g = 24000/((s+3)*(s+8)*(s+100))
bode(g)

%% 2e
clear;
s = tf('s');
figure;
bode(20000/(s*(s+100)*(s+10)))