function [Bx, By, Bz] = bonnet(main)

    [BxW, ByW, BzW] = readMetrices('frontWindow')
    
    x = 0
    Bx = [-98, 20, 120, 225; 
          -98, 20, 120, 225; 
          -85, 20, 120, 230; 
          -63, 20, 120, 240];
      
    By = [0, 0, 0, 0;
          100, 90, 85, 80;
          170, 165, 157, 150;
          260, 245, 226, 193];
      
    Bz = [-55, 27, 65, 87;
          -55, 27, 65, 87;
          -55, 20, 62, 84;
          -55, 10, 55, 80];
      
     
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
        view([0 90]);
    end
end