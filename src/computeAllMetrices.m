function [Bx, By, Bz] = computeAllMetrices()

    frontWindow(true)
    roof(true)
    frontReinforce(true)
    upperReinforce(true)
    
    % This enables to run from this file
    if (nargin == 0)
        car3();
    end
end