s = tf('s');

equ1 = (s + 30)/(s^2 + 2*s)
equ2 = 106 / (s^3 + 16*s^2 + 64*s)

figure;
bode(equ1)
figure;
bode(equ2)