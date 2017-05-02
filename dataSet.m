
function [coEff, deviations] = dataSet(newXSpread, prevXSpread, prevDeviations)
% arrays for deviations using the xSpread
newDeviations = datamechbase(length(newXSpread),newXSpread);
%adds all x values together
xSpread = [newXSpread, prevXSpread];
%adds all y values together
deviations = [newDeviations, prevDeviations];
%creates array of coefficients from a fourth order polynomial using all
%sets
coEff = polyfit(xSpread, deviations, 4);
end