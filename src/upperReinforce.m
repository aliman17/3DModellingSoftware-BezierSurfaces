function [Bx, By, Bz] = upperReinforce(main)
    [BxR, ByR, BzR] = roof(true);
    [BxF, ByF, BzF] = frontReinforce(true);
    
    x = 0;
    Bx = [x, x, x, x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    % Going from the front window
    By = [x, x, x, x;
          x, x, x, x;
          x, x, x, x;
          x, -43, -35, -48];
      
    Bz = [x, x, x, x;
          10, 10, 10, 10;
          10, 10, 10, 10;
          -10, -20, -20, -20];
     
     for i=[1,4]
         Bx(i,:) = Bx(i,:) + BxR(4,:);
         By(i,:) = By(i,:) + ByR(4,:);
         Bz(i,:) = Bz(i,:) + BzR(4,:);
     end
     
     Bx = equal_dist_middle(Bx, false, true);
     By = equal_dist_middle(By, false, true);
     Bz = equal_dist_middle(Bz, false, true);
     Bx(:, 1) = BxF(:, 4);
     By(:, 1) = ByF(:, 4);
     Bz(:, 1) = BzF(:, 4);
     
    % Write matrices into file
    storeMatrices('upperReinforce', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
        view([0 90]);
    end
end