function side13(main)

    x = 0;
    df = 0.2;
    Bx = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    [X, Y, Z, dx, dy, dz] = edge_fit2('side11', 'left');
    
    
    % Edge
    Bx =  [X(1)-100,x,x,X(4); 
          x,x,x,x;
          x,x,x,x;
          X(4)-100,x,x,X(4)];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(:, 4) = X;
    Bx(:, 3) = X+df*dx;
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By =  [Y(1)+5,x,x,Y(1); 
          x,x,x,x;
          x,x,x,x;
          Y(4)+5,x,x,Y(4)];
    % Rectangle
    By = square(By);

    By(:, 4) = Y;
    By(:, 3) = Y+df*dy;
        
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
        % Edge
    Bz =  [Z(1),x,x,Z(1); 
          x,x,x,x;
          x,x,x,x;
          Z(4),x,x,Z(4)];
    % Rectangle
    Bz = square(Bz)
    % Correct edge
    Bz(:, 4) = Z;
    Bz(:, 3) = Z+df*dz;
    
    
    Bz = Bz + [-5,-5,-5,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];

    % Write matrices into file
    storeMatrices('side13', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        computeAllMetrices();
         view([0 90]);
%         view([0 0]);
    end

end