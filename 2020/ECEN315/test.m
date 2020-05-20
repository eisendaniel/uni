K = 0.2;
T = 0.8;

figure;
hold on;
for C = [0.5/16 1/16 2/16]
    sys = tf(C/K, [T 1 C/K])
    step(sys)
end
hold off