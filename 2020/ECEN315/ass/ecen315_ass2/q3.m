clear;
clc;
s = tf('s');

G1 = 26 / (s^2 + 3*s + 16)
linearSystemAnalyzer(G1);
[Wn1,Z1] = damp(G1);
fprintf("Z=%f, Wn=%f, Ts=%f, Tp=%f, Tr=%f, OS=%f \n",Z1(1), Wn1(1), stepinfo(G1).SettlingTime, stepinfo(G1).PeakTime, stepinfo(G1).RiseTime,stepinfo(G1).Overshoot)


G2 = 0.4 / (s^2 + 0.02*s + 0.04)
linearSystemAnalyzer(G2);
[Wn2,Z2] = damp(G2);
fprintf("Z=%f, Wn=%f, Ts=%f, Tp=%f, Tr=%f, OS=%f \n",Z2(1), Wn2(1), stepinfo(G2).SettlingTime, stepinfo(G2).PeakTime, stepinfo(G2).RiseTime,stepinfo(G2).Overshoot)


G3 = 1.07E7 / (s^2 + 1.6E3*s + 1.07E7)  
linearSystemAnalyzer(G3);
[Wn3,Z3] = damp(G3);
fprintf("Z=%f, Wn=%f, Ts=%f, Tp=%f, Tr=%f, OS=%f \n",Z3(1), Wn3(1), stepinfo(G3).SettlingTime, stepinfo(G3).PeakTime, stepinfo(G3).RiseTime,stepinfo(G3).Overshoot)
