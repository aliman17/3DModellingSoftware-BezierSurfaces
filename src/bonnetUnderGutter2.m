function [Bx, By, Bz] = bonnetUnderGutter2(main)
    
    % Initialize matrices
    x = 0;
    df2 = 1;
    df3 = [0, 0.2, 0.4, 1];
      
    % Upper lines are the same as the bottom ones at bonnerGutter
    % However, initialize all of them, to that one
    [X, Y, Z, dx, dy, dz] = edge_fit2('bonnetGutter', 'bottom');
    control_points = [X', Y' Z'];
    [c1, c2] = bezier_sub2(control_points, 0.5);
    X = c1(:, 1)
    Y = c1(:, 2)
    Z = c1(:, 3)
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('bonnetUnderGutter', 'left');
    [X3, Y3, Z3, dx3, dy3, dz3] = edge_fit2('frontLight', 'top');

    Bx = [X(1),x,x,X2(1); 
          x,x,x,x;
          x,x,x,x;
          X(1),x,x,X2(4)];

    % Rectangle
    Bx = square(Bx);
    % Correct edge
    
    Bx(3, :) = X3 + df3.*dx3;
    Bx(4, :) = X3;
    
    Bx(:, 3) = X2 + df2*dx2;
    Bx(:, 4) = X2;
    Bx(1, :) = X;
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y(1),x,x,Y2(1); 
          x,x,x,x;
          x,x,x,x;
          Y(1),x,x,Y2(4)];
    % Rectangle
    By = square(By);
    % Correct edge
    
    By(3, :) = Y3 + df3.*dy3;
    By(4, :) = Y3;
    By(:, 4) = Y2;
    
    By(:, 3) = Y2 + df2*dy2;
    By(1, :) = Y;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    Bz = [Z(1),x,x,Z2(1); 
          x,x,x,x;
          x,x,x,x;
          Z(1),x,x,Z2(4)];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    
    Bz(3, :) = Z3 + df3.*dz3;
    Bz(4, :) = Z3;
    Bz(:, 4) = Z2;
    
    Bz(:, 3) = Z2 + df2*dz2;
    Bz(1, :) = Z;
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
    
     
    % Write matrices into file
    storeMatrices('bonnetUnderGutter2', Bx, By, Bz);
    
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        computeAllMetrices();
        view([0 90]);
    end
end