function back2(main)
    
    [X, Y, Z, dx, dy, dz] = edge_fit2('back1', 'bottom');

    x = 0;
    
    control_points = [X', Y' Z'];
    [c1, c2] = bezier_sub2(control_points, 0.2);
    X = c1(:, 1)
    Y = c1(:, 2)
    Z = c1(:, 3)
    
    % Edge
    Bx = [X(1),x,x,X(4); 
          x,x,x,x;
          x,x,x,x;
          X(1)+0,x,x,X(4)+0];
    % Rectangle
    Bx = square(Bx)
    Bx(:, 1) = X;
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
      
    % Edge
    By = [Y(1),x,x,Y(1)+40; 
          x,x,x,x;
          x,x,x,x;
          Y(1)+10,x,x,Y(1)+60];
    % Rectangle
    By = square(By)
    
    By(1, :) = Y;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
    
    Bz = [Z(1),x,x,Z(4); 
          x,x,x,x;
          x,x,x,x;
          Z(1)-70,x,x,Z(4)-70];
    % Rectangle
    Bz = square(Bz)
    Bz(1, :) = Z;
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
      
    

    % Write matrices into file
    storeMatrices('back2', Bx, By, Bz);
    
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        computeAllMetrices()
         view([90 0]);
%         view([0 0]);
    end

end
