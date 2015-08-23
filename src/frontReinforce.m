function [Bx, By, Bz] = frontReinforce(main)
    [BxW, ByW, BzW] = frontWindow(true);

    x = 0;
    Bx = [x, x, x, x; 
          -10, -10, -10, -10;
          -20, -20, -20, -20;
          60, 60, 60, 60];

    % Going from the front window
    By = [x, x, x, x;
          0, 0, 0, 0;
          0, 0, 0, 0;
          -30, -23, -24, -30];
      
    Bz = [x, x, x, x;
          10, 10, 10, 13;
          0, 0, 3, +10;
          0, 0, -15, -10];
     
     for i=[1,4]
         Bx(i,:) = Bx(i,:) + BxW(4,:);
         By(i,:) = By(i,:) + ByW(4,:);
         Bz(i,:) = Bz(i,:) + BzW(4,:);
     end
     Bx = equal_dist_middle(Bx, false, true);
     By = equal_dist_middle(By, false, true);
     Bz = equal_dist_middle(Bz, false, true);
     
     Bx = Bx + [x, x, x, x;
          -20, x, x, x;
          -10, x, x, x;
          x, x, x, x;];
     
     Bz = Bz + [x, x, x, x;
          -10, x, x, x;
          x, x, x, x;
          x, x, x, x;];
     
    % Write matrices into file
    storeMatrices('frontReinforce', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        computeAllMetrices();
        view([0 90]);
    end
end