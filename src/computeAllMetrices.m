function [Bx, By, Bz] = computeAllMetrices()

    frontWindow(true);
    roof(true);
    frontReinforce(true);
    upperReinforce(true);
    
    side1(true);
    side2(true);
    side3(true);
    side4(true);
    side34(true);
    side5(true)
    side6(true);
    side56(true);
    side10(true);
    side11(true);

    side12(true);
    side14(true);

    side16(true);;
    
    sideLight4(true);
    sideLight3(true);
    sideLight(true);
    sideLight2(true);
    
    
    sideUp1(true);
    sideUp2(true);
    sideUp3(true);
    sideUp0(true);
    sideUp_1(true)
    sideUpBottom(true);
    sideBottom1(true);
    sideBottom2(true);
    sideBigBlackHole(true);
    


    ;
    sideLight6(true);
    sideLight5(true);
    
    frontSide1(true);;;
    frontSide2(true);
    frontSide3(true);
    ;
    thin4(true);
    thin3(true);
    thin2(true);
    
    frontBonnet(true);
    frontMask1(true);
    frontMask2(true);;
    frontMask3(true);
    frontMask4(true);
    frontMask5(true);
    ;
    frontBlack1(true);;
    frontBlack2(true);

    back0(true);
    side15(true);
    backLight(true);
    backBlack(true);
    
    back1(true);
    back2(true);
    back3(true);
    back4(true);
    back5(true);
    back_1(true);
    back6(true);
    back7(true);
    
    sideWindow1(true);
    sideWindow2(true);
    sideWindow3(true);
   
    betweenLightAndReinforce(true);
    bonnetUnderGutter(true);
    bonnetUnderGutter2(true);
    
    road(true)
    
    % This enables to run from this file
    if (nargin == 0)
        car3();
    end
end