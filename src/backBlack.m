function backBlack(main)
    
    [X, Y, Z, dx, dy, dz] = edge_fit2('back0', 'right');


    x = 0;
    
    % Edge
    Bx = [X(1),x,x,X(1); 
          x,x,x,x;
          x,x,x,x;
          X(4),x,x,X(4)];
    % Rectangle
    Bx = square(Bx)
    Bx(:, 1) = X;
    Bx(:, 3) = Bx(:, 4)
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
      
    % Edge
    mdl= 1225
    By = [Y(1),x,x,mdl; 
          x,x,x,x;
          x,x,x,x;
          Y(4),x,x,mdl];
    % Rectangle
    By = square(By)
    
    By(:, 1) = Y;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
    
    Bz = [Z(1),x,x,Z(1); 
          x,x,x,x;
          x,x,x,x;
          Z(4),x,x,Z(4)];
    % Rectangle
    Bz = square(Bz)
    Bz(:, 1) = Z;
    
    Bz = Bz + [x,25,10,15; 
               x,x,x,x;
               x,x,x,x;
               x,10,x,x]
      
    

    % Write matrices into file
    storeMatrices('backBlack', Bx, By, Bz);
    
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        computeAllMetrices()
         view([90 0]);
%         view([0 0]);
    end

end
