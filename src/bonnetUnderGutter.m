function [Bx, By, Bz] = bonnetUnderGutter(main)
    
    % Initialize matrices
    x = 0
    Bx = [x, x, x, x; 
          x, x, x, x; 
          x, x, x, x; 
          x, x, x, x];
    By = Bx;
    Bz = Bx;
      
    % Upper lines are the same as the bottom ones at bonnerGutter
    % However, initialize all of them, to that one
    [BxG, ByG, BzG] = readMetrices('bonnetGutter');
    for i = 1:4
        Bx(i, :) = BxG(4, :);
        By(i, :) = ByG(4, :);
        Bz(i, :) = BzG(4, :);
    end
    
    % East is the same as wiper bottom
    [BxW, ByW, BzW] = readMetrices('wiperPlace');
    Bx(2:4, 4) = BxW(4, 2:4)';
    By(2:4, 4) = ByW(4, 2:4)';
    %Bz(2:4, 4) = BzW(4, 2:4)';
    
    % Edit edges
    tmpBx = [x, x, x, x; 
             x, x, x, 3; 
             x, x, x, 5; 
             x, 200, 200, x];
    Bx = Bx + tmpBx
    
    tmpBy = [x, x, x, x; 
             x, x, x, x; 
             x, x, x, x; 
             x, 98, 125, x];
    By = By - tmpBy
    
    tmpBz = [x, x, x, x; 
             x, x, x, x; 
             x, x, x, x; 
             x, 50, 40, x];
    Bz = Bz + tmpBz
    
    
    [BxL, ByL, BzL] = readMetrices('frontLight');
    Bx(:, 1) = BxL(1, :)
    By(:, 1) = ByL(1, :)
    Bz(:, 1) = BzL(1, :)
    
    % Edit middle
    Bx = coonsPatch(Bx, 'normal');
    By = coonsPatch(By, 'normal');
    
    tmpBz = [x, x, x, x; 
             x, 15, 15, 10; 
             x, 15, 15, 10; 
             x, x, x, x];
    Bz = Bz + tmpBz
    
     
    % Write matrices into file
    storeMatrices('bonnetUnderGutter', Bx, By, Bz);
    
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
        view([0 90]);
    end
end