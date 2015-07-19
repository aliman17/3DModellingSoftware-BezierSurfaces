function [Bx, By, Bz] = bonnetGutter(main)

    [BxW, ByW, BzW] = readMetrices('bonnet')
    
    x = 0
    Bx = [x, x, x, x; 
          x, 0, 0, 0; 
          x, 0, 0, 0; 
          x, 0, 0, 0];
      
    By = [x, x, x, x;
          x, -1, -2, -4;
          x, -1, -2, -4;
          x, -2, -4, -7];
      
    Bz = [x, x, x, x;
          x, -1, -3, -7;
          x, -1, -3, -7;
          x, 0, 0, 0];
     
    for i=1:4
        Bx(i, :) = Bx(i, :) + BxW(4, :) ;
        By(i, :) = By(i, :) + ByW(4, :) ;
        Bz(i, :) = Bz(i, :) + BzW(4, :) ;
    end

     
    % Write matrices into file
    storeMatrices('bonnetGutter', Bx, By, Bz);
    
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
        view([0 90]);
    end
end