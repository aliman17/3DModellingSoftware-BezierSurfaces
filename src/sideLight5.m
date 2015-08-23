function sideLight5(main)

    x = 0;
    df = [0, 0, 0.2, 1];
    df2 = 1;
    
    [X, Y, Z, dx, dy, dz] = edge_fit2('sideLight3', 'bottom');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('sideLight6', 'left');
    
    
    % Edge
    Bx =  [X(1),x,x,X(4); 
          x,x,x,x;
          x,x,x,x;
          X(4),x,x,X2(4)];
      
    % Other two vertices
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(1, :) = X;
    Bx(2, :) = X + df.*dx;
    Bx(:, 4) = X2;
    Bx(:, 3) = X2 + df2*dx2;
    Bx(2, 2) = X(2);
    
    Bx = Bx + [x,x,x,x; 
               x,40,40,x;
               x,20,20,x;
               x,x,x,x];
      
    % Edge
    By = [Y(1),x,x,Y(4); 
           x,x,x,x;
           x,x,x,x;
           Y(4),x,x,Y2(4)];
    % Rectangle
    By = square(By);
    % Correct edge
    By(1, :) = Y;
    By(2, :) = Y + df.*dy;
    By(:, 4) = Y2;
    By(:, 3) = Y2 + df2*dy2;
    By(2, 2) = Y(2);
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    % Edge
    Bz = [Z(1),x,x,Z(4); 
           x,x,x,x;
           x,x,x,x;
           Z(4),x,x,Z2(4)];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(1, :) = Z;
    Bz(2, :) = Z + df.*dz;
    Bz(:, 4) = Z2;
    Bz(:, 3) = Z2 + df2*dz2;
    Bz(2, 2) = Z(2);
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('sideLight5', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end