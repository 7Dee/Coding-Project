%function to find spreads around local maximums and minimums
function [xSpread] = SpreadX(localSite1,localSite2,localSite3,numLoc)
xSpread = [];
 %creates the spread based upon how many samples are being taken and which
 %location is the maximum. When 10 samples are taken,the max locations has
 %4 points around it while the others have 3. If 15 samples are taken, each
 %location has 5 samples around it
 
 %spread creates for the first local extreme being the maximum
if(localSite1 > localSite2 && localSite1 > localSite3)
    if(numLoc == 10)
        xSpread = linspace((localSite1 - 0.05),(localSite1 + 0.05),4);
        xSpread = [xSpread, linspace((localSite2 - 0.05),(localSite2 + 0.05),3)];
        xSpread = [xSpread, linspace((localSite3 - 0.05),(localSite3 + 0.05),3)];
    else
        xSpread = linspace((localSite1 - 0.05),(localSite1 + 0.05),5);
        xSpread = [xSpread, linspace((localSite2 - 0.05),(localSite2 + 0.05),5)];
        xSpread = [xSpread, linspace((localSite3 - 0.05),(localSite3 + 0.05),5)];
    end
% spread creates for the second local extrema being the maximum
elseif(localSite2 > localSite1 && localSite2 > localSite3)
    if(numLoc == 10)
        xSpread = linspace((localSite2 - 0.05),(localSite2 + 0.05),4);
        xSpread = [xSpread, linspace((localSite1 - 0.05),(localSite1 + 0.05),3)];
        xSpread = [xSpread, linspace((localSite3 - 0.05),(localSite3 + 0.05),3)];
    else
        xSpread = linspace((localSite1 - 0.05),(localSite1 + 0.05),5);
        xSpread = [xSpread, linspace((localSite2 - 0.05),(localSite2 + 0.05),5)];
        xSpread = [xSpread, linspace((localSite3 - 0.05),(localSite3 + 0.05),5)];
    end
% spread creates for the third local extrema being the maximum
elseif(localSite3 > localSite1 && localSite3 > localSite2)
     if(numLoc == 10)
        xSpread = linspace((localSite3 - 0.05),(localSite3 + 0.05),4);
        xSpread = [xSpread, linspace((localSite1 - 0.05),(localSite1 + 0.05),3)];
        xSpread = [xSpread, linspace((localSite2 - 0.05),(localSite2 + 0.05),3)];
     else
        xSpread = linspace((localSite1 - 0.05),(localSite1 + 0.05),5);
        xSpread = [xSpread, linspace((localSite2 - 0.05),(localSite2 + 0.05),5)];
        xSpread = [xSpread, linspace((localSite3 - 0.05),(localSite3 + 0.05),5]);
     end
% spread creates if the other situations above do not occur (local extema
% being the same value)
else
    if(numLoc == 10)
        xSpread = linspace((localSite1 - 0.05),(localSite1 + 0.05),4);
        xSpread = [xSpread, linspace((localSite2 - 0.05),(localSite2 + 0.05),3)];
        xSpread = [xSpread, linspace((localSite3 - 0.05),(localSite3 + 0.05),3)];
    else
        xSpread = linspace((localSite1 - 0.05),(localSite1 + 0.05),5);
        xSpread = [xSpread, linspace((localSite2 - 0.05),(localSite2 + 0.05),5)];
        xSpread = [xSpread, linspace((localSite3 - 0.05),(localSite3 + 0.05),5)];
    end
end   
end