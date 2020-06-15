s = tf('s');

equ1 = (s^2 - 3*s + 2)/(s^2 + 7*s + 12);
equ2 = (s + 3)/(0.9*s^3 + 3*s^2 + 5*s + 2);



figure;
rlocus(equ1)
figure;
rlocus(equ2)
