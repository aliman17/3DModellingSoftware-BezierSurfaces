function side56(main)

    x = 0;
    df_alpha = 1;
    Bx = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
      
    [X, Y, Z, dx, dy, dz] = edge_fit2('side5', 'bottom');
    [X2, Y2, Z2, dx2, dy2, dz2]  = edge_fit2('side6', 'top');
    [X3, Y3, Z3, dx3, dy3, dz3]  = edge_fit2('side34', 'right');
   
    
    % Edge
    Bx = [X(1),x,x,X(4); 
          x,x,x,x;
          x,x,x,x;
          X2(1),x,x,X2(4)];
    % Other two vertices
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(1, :) = X;
    Bx(4, :) = X2;
    
    Bx(:, 1) = X3;
   

    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y(1),x,x,Y(4); 
          x,x,x,x;
          x,x,x,x;
          Y2(1),x,x,Y2(4)];
    % Other two vertices
    % Rectangle
    By = square(By);
    % Correct edge
    By(1, :) = Y;
    By(4, :) = Y2;
    By(:, 1) = Y3;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    % Edge
    Bz = [Z(1),x,x,Z(4); 
          x,x,x,x;
          x,x,x,x;
          Z2(1),x,x,Z2(4)];
    % Other two vertices
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(1, :) = Z;
    Bz(4, :) = Z2;
    Bz(:, 1) = Z3;
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('side56', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end