function [Bx, By, Bz] = roof(main)
    [BxW, ByW, BzW] = frontWindow(true);
    
    r_lenWx = size(BxW, 2);
    c_lenWx = size(BxW, 1);
    x = 0;
    Bx = [x, x, x, 500; 
          x, x, x, 500;
          x, x, x, 500;
          x, x, x, 500];
    Bx(:, 1) = BxW(:, r_lenWx) ;  % Bx first column is the same as BxW the last one
    Bx(:, size(Bx, 2)) = Bx(:, size(Bx, 2)) + BxW(1, r_lenWx);  % get top  left of BxW and add to Bx last column
    Bx = equal_dist_middle(Bx, true, true);  % Compute the middle elements

    By = [x, x, x, x;
          x, x, x, x;
          x, x, x, x;
          x, 30, 40, 60];
    By(1, :) = ByW(1, 1) ; %  top row
    By(4, :) = By(4, :) + ByW(size(ByW, 1), size(ByW, 2)); % last row
    By = equal_dist_middle(By, false, true);  % middle
    By(:, 1) = ByW(:, 4) ; % override first column
      
    Bz = [x, 45, 40, 15;
          x, 45, 40, 15;
          x, 35, 35, 7;
          x, 30, 25, 0];
    Bz = Bz + BzW(size(BzW, 1), size(BzW, 2));
    Bz(:, 1) = BzW(:, 4) ;
    
    % Write matrices into file
    storeMatrices('roof', Bx, By, Bz);
    
    % This enables to run from this file
    if (nargin == 0)
        view([0 0]);
        car3();
    end

end