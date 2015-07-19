function [Bx, By, Bz] = bonnet(main)

    [BxW, ByW, BzW] = readMetrices('frontWindow')
    
    x = 0
    Bx = [0, 50, 120, 225; 
          0, 50, 120, 225; 
          0, 50, 120, 230; 
          0, 50, 120, 240];
      
    By = [0, 0, 0, 0;
          100, 90, 85, 80;
          170, 165, 157, 150;
          238, 230, 220, 193];
      
    Bz = [0, 27, 65, 87;
          0, 27, 65, 87;
          -2, 20, 62, 84;
          -5, 10, 55, 80];
      
     
     By(:, 4) = equal_split(By(1, 4), By(4, 4), 4)';
     
     Bx = Bx + 1330;
     By =  - By + 850 + 375;
     Bz = Bz + 395;

     
    % Write matrices into file
    storeMatrices('bonnet', Bx, By, Bz);
    
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
        view([0 0]);
    end
end