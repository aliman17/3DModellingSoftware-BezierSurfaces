function sideUp3(main)

    x = 0;
    df_alpha = 1;
    Bx = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    [X, Y, Z, dx, dy, dz] = edge_fit2('sideUp2', 'right');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('side5', 'top');
    
    
    % Edge
    Bx = [X2;X2;X2;X2];
    % Other two vertices
    Bx(4, :) = X2;
    Bx(:, 1) = X;
    Bx(:, 2) = X+dx;
    Bx(1, 4) = Bx(4,4);
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(4, :) = X2;
    Bx(:, 1) = X;
    Bx(:, 2) = X+dx;
    Bx(:,4) = Bx(:,4) + 50
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y2;Y2;Y2;Y2];
    % Other two vertices
    By(4, :) = Y2;
    By(:, 1) = Y;
    By(:, 2) = Y+dy;
    By(1, 4) = By(4,4) + 90;
    % Rectangle
    By = square(By);
    % Correct edge
    By(4, :) = Y2;
    By(:, 1) = Y;
    By(:, 2) = Y+dy;
    By(:, 4) =  By(:, 4) + 20;
    
    By = By + [x,x,x,-10; 
               x,x,x,x;
               x,x,x,x;
               x,x,10,10];
           
    % Edge
    Bz = [Z2;Z2;Z2;Z2];
    % Other two vertices
    Bz(1, 4) = Z2(4);
    Bz(4, :) = Z2;
    Bz(:, 1) = Z;
    Bz(:, 2) = Z+dz;
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(4, :) = Z2;
    Bz(:, 1) = Z;
    Bz(:, 2) = Z+dz;
    Bz(:, 4) = Bz(:, 4) - 40; 
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('sideUp3', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 90]);
%         view([0 0]);
    end

end