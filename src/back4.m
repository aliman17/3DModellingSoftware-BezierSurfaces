function back4(main)

    x = 0;

    [X, Y, Z, dx, dy, dz] = edge_fit2('back0', 'right');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('back3', 'left');
    
    control_points = [X Y Z];
    [c1, c2] = bezier_sub2(control_points, 0.52);
    [c1, c2] = bezier_sub2(c2, 0.4);
    X = c1(:, 1);
    Y = c1(:, 2);
    Z = c1(:, 3);
    
    % Edge
    Bx = [X(1),x,x,X2(1); 
          x,x,x,x;
          x,x,x,x;
          X(4),x,x,X2(4)];
    % Rectangle
    Bx = square(Bx)
    Bx(:, 1) = X;
    Bx(:, 4) = X2;
    Bx(:, 3) = X2 + dx2;
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y(1),x,x,Y2(1); 
          x,x,x,x;
          x,x,x,x;
          Y(4),x,x,Y2(4)];
    % Rectangle

    By = square(By);
    
    By(:, 1) = Y;
    By(:, 3) = Y2 + dy2;
    By(:, 4) = Y2;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
    
    Bz = [Z(1),x,x,Z2(1); 
          x,x,x,x;
          x,x,x,x;
          Z(4),x,x,Z2(4)];
    % Rectangle
    Bz = square(Bz);
    
    Bz(:, 1) = Z;
    Bz(:, 3) = Z2 + dz2;
    Bz(:, 4) = Z2;
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('back4', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        axis([600 3000 0 2000 0 1000])
        computeAllMetrices();
         view([90 0]);
%         view([0 0]);
    end

end