%Function for finding max with conditional
%Function for finding min with conditional
%Function that plots variance vs length
%Functions for each trial
x = linspace(0,1.2,100);
y = datamechbase(length(x),x);
coefficiants = polyfit(x,y,4)
plot(x,y)
maxY = max(y)
minY = min(y)

