function sideLight2(main)

    x = 0;
    df_alpha = 1;
    df2 = 1;
    Bx = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    out = edge_fit('sideLight', 'top');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('sideLight3', 'left');
    
    X = out(:, 1);
    Y = out(:, 2);
    Z = out(:, 3);
    
    dx = out(:, 4);
    dy = out(:, 5);
    dz = out(:, 6);
    
    % Edge
    Bx = [X,X,X,X];
    % Correct edge
    Bx(:, 1) = X;
    Bx(:, 2) = X + df_alpha*dx;
    Bx(:, 4) = X2;
    Bx(:, 3) = X2 + df2*dx2;

    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y,Y,Y,Y];
    % Other two vertices
    By(:, 4) = Y + dy;

    % Correct edge
    By(:, 1) = Y;
    By(:, 2) = Y + df_alpha*dy;
    By(:, 4) = Y2;
    By(:, 3) = Y2 + df2*dy2;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    % Edge
    Bz = [Z,Z,Z,Z];

    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(:, 1) = Z;
    Bz(:, 2) = Z + df_alpha*dz;
    Bz(:, 4) = Z2;
    Bz(:, 3) = Z2 + df2*dz2;
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
     

    % Write matrices into file
    storeMatrices('sideLight2', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end