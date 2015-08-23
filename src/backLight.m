function backLight(main)
    
    [X, Y, Z, dx, dy, dz] = edge_fit2('back0', 'right');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('side14', 'right');

    x = 0;
    
    control_points = [X, Y Z];
    [c1, c2] = bezier_sub2(control_points, 0.2);
    X = c1(:, 1);
    Y = c1(:, 2);
    Z = c1(:, 3);
    
    % Edge
    Bx = [X(1),x,x,X(1)+20; 
          x,x,x,x;
          x,x,x,x;
          X(4),x,x,X(4)+20];
    % Rectangle
    Bx = square(Bx)
    Bx(:, 1) = X;
    Bx(:, 3) = Bx(:, 4)
    Bx = Bx + [x,20,x,x; 
               x,20,x,x;
               x,20,x,x;
               x,20,x,x]
      
    % Edge
    mdl= 1225
    By = [Y(1),x,x,Y(1)+165; 
          x,x,x,x;
          x,x,x,x;
          Y(4),x,x,Y(4) + 150];
    % Rectangle
    By = square(By)
    
    By(:, 1) = Y;
    
    By = By + [3,x,x,-2; 
               2,x,x,x;
               2,x,x,x;
               4,x,x,x]
    
    Bz = [Z(1),x,x,Z(1)+8; 
          x,x,x,x;
          x,x,x,x;
          Z(4),x,x,Z(4)+6];
    % Rectangle
    Bz = square(Bz)
    Bz(:, 1) = Z;
    
    Bz = Bz + [-4,2,2,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
      
    

    % Write matrices into file
    storeMatrices('backLight', Bx, By, Bz);
    
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        computeAllMetrices()
         view([90 0]);
%         view([0 0]);
    end

end
