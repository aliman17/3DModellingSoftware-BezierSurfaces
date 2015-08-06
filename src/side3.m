function side3(main)

    x = 0;
    df_alpha = 1;
    Bx = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    out = edge_fit('side1', 'right');
    
    X = out(:, 1);
    Y = out(:, 2);
    Z = out(:, 3);
    
    dx = out(:, 4);
    dy = out(:, 5);
    dz = out(:, 6);
    
    % Edge
    Bx = [X,X,X,X];
    % Other two vertices
    Bx(1,4) = Bx(1, 4) + 200;
    Bx(4,4) = Bx(4, 4) + 240;
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(:, 1) = X;
    Bx(:, 2) = X + df_alpha*dx;
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y,Y,Y,Y];
    % Other two vertices
    By(1, 4) = By(1, 4) -2;
    By(4, 4) = By(4, 4) ; 
    % Rectangle
    By = square(By);
    % Correct edge
    By(:, 1) = Y;
    By(:, 2) = Y + df_alpha*dy;
    
    By = By + [x,x,x,3; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    % Edge
    Bz = [Z,Z,Z,Z];
    % Other two vertices
    Bz(1,4) = Bz(1, 4)+ 20;
    Bz(4,4) = Bz(4, 1)+ 20;
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(:, 1) = Z;
    Bz(:, 2) = Z + df_alpha*dz;
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('side3', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end