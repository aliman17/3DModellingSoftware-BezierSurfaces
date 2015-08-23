function sideUp_1(main)

    x = 0;
    df = 1;

    [X, Y, Z, dx, dy, dz] = edge_fit2('sideUp0', 'left');
    %[X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('sideLight4', 'top');
    [X3, Y3, Z3, dx3, dy3, dz3] = edge_fit2('frontReinforce', 'left');
    
    % Edge
    Bx = [X3(1),x,x,X3(4); 
          x,x,x,x;
          x,x,x,x;
          X3(1)-40,x,x,X(4)];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(1,:) = X3;
    Bx(:, 4) = X;
    Bx(:, 3) = X + df*dx;
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y3(1),x,x,Y3(4); 
          x,x,x,x;
          x,x,x,x;
          Y(4)+10,x,x,Y(4)];
    % Rectangle
    By = square(By);
    % Correct edge
    By(1,:) = Y3;
    By(:, 4) = Y;
    By(:, 3) = Y + df*dy;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    Bz = [Z3(1),x,x,Z3(4); 
          x,x,x,x;
          x,x,x,x;
          Z3(1)-3,x,x,Z(4)];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
%     Bz(1,:) = Z3;
    Bz(:, 4) = Z;
    Bz(:, 3) = Z + df*dz;
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,5,x,x;
               x,10,x,x];
      
    

    % Write matrices into file
    storeMatrices('sideUp_1', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        computeAllMetrices();
         view([0 90]);
%         view([0 0]);
    end

end