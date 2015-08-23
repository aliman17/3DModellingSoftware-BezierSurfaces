function sideLight3(main)

    x = 0;
    df = 1;
    df2 = 1;

    [X, Y, Z, dx, dy, dz] = edge_fit2('sideLight2', 'right');

    
    % Edge
    Bx = [X(1),x,x,1819; 
          x,x,x,x;
          x,x,x,x;
          X(4),x,x,1826];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(:, 1) = X;
    Bx(:, 2) = X + df*dx;
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y(1),x,x,800; 
          x,x,x,x;
          x,x,x,x;
          Y(4),x,x,787];
    % Rectangle
    By = square(By);
    % Correct edge
    By(:, 1) = Y;
    By(:, 2) = Y + df*dy;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,3;
               x,x,3,7];
           
    % Edge
    Bz = [Z(1),x,x,457; 
          x,x,x,x;
          x,x,x,x;
          Z(4),x,x,390];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(:, 1) = Z;
    Bz(:, 2) = Z + df*dz;
    
    Bz = Bz + [x,x,-5,-10; 
               x,x,x,-5;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('sideLight3', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end