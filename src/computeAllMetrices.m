function [Bx, By, Bz] = computeAllMetrices()

    frontWindow(true)
    roof(true)
    frontReinforce(true)
    upperReinforce(true)
    
    side1(true)
    side2(true)
    side3(true)
    side4(true)
    side34(true)
    side5(true)
    side6(true)
    side56(true)
    side7(true)
    sideUp1(true)
    sideUp2(true)
    sideUp3(true)
    sideUp_1(true)
    sideUpBottom(true)
    sideBottom1(true)
    sideBottom2(true)
    sideBigBlackHole(true)
    
    
    
    
    % This enables to run from this file
    if (nargin == 0)
        car3();
    end
end