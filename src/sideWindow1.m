function sideWindow1(main)

    x = 0;
    df = 0.3;
    [X, Y, Z, dx, dy, dz] = edge_fit2('sideUp0', 'top');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('sideUp1', 'top');
    [X3, Y3, Z3, dx3, dy3, dz3] = edge_fit2('frontReinforce', 'bottom');
    
    % Edge
    Bx = [X3(1),x,x,X3(4); 
          x,x,x,x;
          x,x,x,x;
          X(4),x,x,X2(4)];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(:, 1) = X;
    Bx(1, :) = X3;
    Bx(4, :) = X2;
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y3(1),x,x,Y3(4); 
          x,x,x,x;
          x,x,x,x;
          Y(4),x,x,Y2(4)];
    % Rectangle
    By = square(By);
    % Correct edge
    By(:, 1) = Y;
    By(1, :) = Y3;
    By(4, :) = Y2;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    Bz = [Z3(1),x,x,Z3(4); 
          x,x,x,x;
          x,x,x,x;
          Z(4),x,x,Z2(4)];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(:, 1) = Z;
    Bz(1, :) = Z3;
    Bz(4, :) = Z2;
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('sideWindow1', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end