function side15(main)

    x = 0;
    df = 0.3;
    df2 = [1; 1; 0.1; 0];
    [X, Y, Z, dx, dy, dz] = edge_fit2('side9', 'right');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('side14', 'right');
    [X3, Y3, Z3, dx3, dy3, dz3] = edge_fit2('back0', 'left');
    
    X = flipud(X);
    Y = flipud(Y) ;
    Z = flipud(Z);
    dx = flipud(dx); 
    dy = flipud(dy); 
    dz = flipud(dz);
    % Edge
    Bx =  [X(4),x,x,X3(1); 
          x,x,x,x;
          x,x,x,x;
          X2(4),x,x,X3(4)];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(1, :) = X;
    Bx(2, :) = X+df*dx;
    Bx(:, 1) = X2
    Bx(:, 2) = X2 + df2.*dx2
    Bx(:, 4) = X3;
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
    % Edge
    By =  [Y(4),x,x,Y3(1); 
          x,x,x,x;
          x,x,x,x;
          Y2(4),x,x,Y3(4)];
    % Rectangle
    By = square(By);

    By(1, :) = Y;
    By(2, :) = Y+df*dy;
    
    By(:, 1) = Y2;
    By(:, 2) = Y2 + df2.*dy2;
    By(:, 4) = Y3;
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
        % Edge
    Bz =  [Z(4),x,x,Z3(1); 
          x,x,x,x;
          x,x,x,x;
          Z2(4),x,x,Z3(4)];
    % Rectangle
    Bz = square(Bz)
    % Correct edge
    Bz(1, :) = Z;
    Bz(2, :) = Z+df*dz;
    
    Bz(:, 1) = Z2;
    Bz(:, 2) = Z2 + df2.*dz2;
    Bz(:, 4) = Z3;
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];

    % Write matrices into file
    storeMatrices('side15', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        computeAllMetrices()
         view([90 0]);
%         view([0 0]);
    end

end