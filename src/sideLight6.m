function sideLight6(main)

    x = 0;
    df = 1;
    df2 = 0.1;
    [X, Y, Z, dx, dy, dz] = edge_fit2('sideLight4', 'bottom');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('side2', 'left');
     
    % Edge
    Bx =  [X(1),x,x,X(4); 
          x,x,x,x;
          x,x,x,x;
          X2(4)-36,x,x,X2(4)];
    % Rectangle
    Bx = square(Bx);
    % Repair edge
    Bx(1, :) = X;
    Bx(2, :) = X + df*dx;
    Bx(:, 4) = X2;
    Bx(:, 3) = X2 + df2*dx2;

    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By =  [Y(1),x,x,Y(4); 
          x,x,x,x;
          x,x,x,x;
          Y2(4),x,x,Y2(4)];
    % Rectangle
    By = square(By);
    % Repair edge
    By(1, :) = Y;
    By(2, :) = Y + df*dy;
    By(:, 4) = Y2;
    By(:, 3) = Y2 + df2*dy2;

    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
        % Edge
    Bz =  [Z(1),x,x,Z(4); 
          x,x,x,x;
          x,x,x,x;
          Z2(4),x,x,Z2(4)];
    % Rectangle
    Bz = square(Bz);
    % Repair edge
    Bz(1, :) = Z;
    Bz(2, :) = Z + df*dz;
    Bz(:, 4) = Z2;
    Bz(:, 3) = Z2 + df2 * dz2;

    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];

    % Write matrices into file
    storeMatrices('sideLight6', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 90]);
%         view([0 0]);
    end

end