x = linspace(0,1,1000);
Rp = 1000;
Rl = 10000;
Vs = 10;


N = Vs .* (x.^2 - x.^3) .* (Rp/Rl)
plot(x,N)
ylabel("N(x) : error %")
xlabel("x : pot displacment")
