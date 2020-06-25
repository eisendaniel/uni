load accidents
x = hwydata(:,14); %Population of states
y = hwydata(:,4); %Accidents per state
format long

hold on
scatter(x,y)
b1 = x\y
plot(x,b1.*x)