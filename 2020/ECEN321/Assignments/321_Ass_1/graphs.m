
cr = [34,1,511,2,574,496,322,424,269,140,244,252,76,108,24,38,18,34,30,191];
ni =[23,22,55,39,283,34,159,37,61,34,163,140,32,23,54,837,64,354,376,471];
S = [cr.' , ni.'];
T = ["Cr", "Ni"];
BINS = 20;

% plot the spectrogram
figure(1)
histogram(cr, BINS);
xlabel('Concentration (mg/kg)')
ylabel('Frequency')
title('Cr')

% plot the spectrogram
figure(2)
histogram(ni, BINS);
xlabel('Concentration (mg/kg)')
ylabel('Frequency')
title('Ni')

figure(3)
boxplot(S, T)
ylabel('Concentration (mg/kg)')