%create spread for first set
xSpread1 = linspace(0,1.2,5);
%use first set to estimate equation and return y-values
[coEffs1, deviations] = dataSet(xSpread1,0,0);
%derive equation from first set to determine next test sites
sites1 = sampleLocate(coEffs1);
%create spread for second set
xSpread2 = SpreadX(sites1(1),sites1(2),sites1(3),10);
%add all xSpreads together
xSpread = [xSpread1,xSpread];
%use second set to estimate equation and return y-values
[coEffs2, deviations] = dataSet(xSpread2,xSpread,deviations);
%derive equation from second set to determine next test sites
sites2 = sampleLocate(coEffs2);
%create spread for third set
xSpread3 = SpreadX(sites2(1),sites2(2),sites2(3),15);
%add new spread to xSpread
xSpread = [xSpread,xSpread3];
%use third set to estimate equation and return y-values
[coEffs3,deviations] = dataSet(xSpread3,xSpread,deviations);
