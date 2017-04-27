
function [coEff] = dataSet(startValue,endValue,numSamples)
% arrays for total x locations and deviations
sampleLoc = [];
deviations = [];
sampleLocCurrent = linspace(startValue,endValue,numSamples);
sampleLoc = sampleLocCurrent;
deviationsCurrent = datamechbase(length(sampleLocCurrent),sampleLocCurrent);
deviations = deviationsCurrent;
coEff = polyfit(sampleLoc, deviations, 4);
end