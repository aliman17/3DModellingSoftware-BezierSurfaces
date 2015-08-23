function [Bx, By, Bz] = bonnetUnderGutter(main)
    
    % Initialize matrices
    x = 0
    df3 = [1, 1, 1, 0];
      
    % Upper lines are the same as the bottom ones at bonnerGutter
    % However, initialize all of them, to that one
    
    [X, Y, Z, dx, dy, dz] = edge_fit2('bonnetGutter', 'bottom');
    control_points = [X', Y' Z'];
    [c1, c2] = bezier_sub2(control_points, 0.5);
    X = c2(:, 1)
    Y = c2(:, 2)
    Z = c2(:, 3)
    
    
    [X3, Y3, Z3, dx3, dy3, dz3] = edge_fit2('betweenLightAndReinforce', 'top');

    Bx = [X(1),x,x,X3(4); 
          x,x,x,x;
          x,x,x,x;
          X3(1),x,x,X3(4)];

    % Rectangle
    Bx = square(Bx);
    % Correct edge
    
    Bx(3, :) = X3 + df3.*dx3;
    Bx(4, :) = X3;
    Bx(1, :) = X;
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y(1),x,x,Y3(4); 
          x,x,x,x;
          x,x,x,x;
          Y3(4),x,x,Y3(4)];
    % Rectangle
    By = square(By);
    % Correct edge
    
    By(3, :) = Y3 + df3.*dy3;
    By(4, :) = Y3;
    By(1, :) = Y;
    
    By = By + [x,x,x,x; 
               20,40,50,x;
               x,x,x,x;
               x,x,x,x];
           
    Bz = [Z(1),x,x,Z3(4); 
          x,x,x,x;
          x,x,x,x;
          Z3(4),x,x,Z3(4)];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    
    Bz(3, :) = Z3 + df3.*dz3;
    Bz(4, :) = Z3;
    Bz(1, :) = Z;
    
    Bz = Bz + [x,x,x,x; 
               -10,13,30,x;
               x,x,x,x;
               x,x,x,x];
    
     
    % Write matrices into file
    storeMatrices('bonnetUnderGutter', Bx, By, Bz);
    
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        computeAllMetrices();
        view([0 90]);
    end
end