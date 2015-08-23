function sideLight4(main)

    x = 0;
    df = 0.2;
    df2 = 0.1;
    Bx = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    [X, Y, Z, dx, dy, dz] = edge_fit2('sideLight3', 'right');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('side1', 'left');

    
    % Edge
    Bx = [X,X,X,X];

    % Correct edge
    Bx(:, 1) = X;
    Bx(:, 2) = X + df*dx;
    Bx(:, 4) = X2;
    Bx(:, 3) = X2 + df*dx2;
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y,Y,Y,Y];
        % Correct edge
    By(:, 1) = Y;
    By(:, 2) = Y + df*dy;
    By(:, 4) = Y2;
    By(:, 3) = Y2 + df*dy2;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    % Edge
    Bz = [Z,Z,Z,Z];
       % Correct edge
    Bz(:, 1) = Z;
    Bz(:, 2) = Z + df*dz;
    Bz(:, 4) = Z2;
    Bz(:, 3) = Z2 + df*dz2;
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('sideLight4', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end