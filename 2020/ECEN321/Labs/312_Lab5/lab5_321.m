clear;clc;
[years, average_temp, base_temp] = get_temperature("data/taipei.txt");

% NaN removing
not_nan= ~isnan(average_temp);  
years = years(not_nan);              
average_temp = average_temp(not_nan);

[B,BINT,R,RINT,STATS] = regress(average_temp,years)

format long
b1 = years\average_temp;
X = [ones(length(years),1) years];
b0 = years\average_temp;

hold on
scatter(years,average_temp)
plot(years,b1.*years)
plot(years,b0 + b1.*years,"--")
ylabel("temp (c)")
xlabel("time (y)")

