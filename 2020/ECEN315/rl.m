s = tf('s');

equ1 = 1/(4*s^3 + 2*s^2 + 8*s);
equ2 = (s^2 + 4*s + +12)/(3*s^2 + 6*s + 1);
equ3 = 1/(s^4 + 4*s^3 + 6*s^2 + 6*s + 1);
equ4 = (2*s + 4)/(5*s^3 + 6*s^2 + s);


figure;
rlocus(equ1)
figure;
rlocus(equ2)
figure;
rlocus(equ3)
figure;
rlocus(equ4)
