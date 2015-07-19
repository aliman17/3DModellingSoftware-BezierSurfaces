function [Bx, By, Bz] = wiperPlace(main)

    [BxW, ByW, BzW] = readMetrices('frontWindow')
    [BxB, ByB, BzB] = readMetrices('bonnet')
    
    x = 0
    Bx = [x, x, x, x; 
          x, 0, 0, 0; 
          x, 0, 0, 0; 
          x, -20, -20, 0];
      
    By = [x, x, x, x;
          x, 0, 0, 0; 
          x, 0, 0, 0; 
          x, 100, 30, 0];
      
    Bz = [x, -30, -10, x;
          x, -30, -10, 0; 
          x, -30, -10, 0; 
          x, -30, -10, 0];
     
    for i=1:4
        Bx(:, i) = Bx(:, i) + BxW(:, 1) ;
        By(:, i) = By(:, i) + ByW(:, 1) ;
        Bz(:, i) = Bz(:, i) + BzW(:, 1) ;
    end
    Bx(:, 1) = BxB(:, 4)
    By(:, 1) = ByB(:, 4)
    Bz(:, 1) = BzB(:, 4)
    Bx = equal_dist_middle(Bx, 'vertical', false)
    %By = equal_dist_middle(By, 'horizontal', false)
    

     
    % Write matrices into file
    storeMatrices('wiperPlace', Bx, By, Bz);
    
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
        view([0 0]);
    end
end