function sideUp1(main)

    x = 0;
    df_alpha = 1;
    Bx = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    [X, Y, Z, dx, dy, dz] = edge_fit2('side1', 'top');
    
    
    % Edge
    Bx = [X;X;X;X];
    % Other two vertices
    Bx(1, 1) = Bx(1,1) + 30;
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(4, :) = X;
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y;Y;Y;Y];
    % Other two vertices
    By(1, 1) = Y(1) + 37;
    By(1, 4) = Y(4) + 50;
    % Rectangle
    By = square(By);
    % Correct edge
    By(4, :) = Y;
    %By(:, 2) = Y + df_alpha*dy;
    
    By = By + [x,-3,-3,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    % Edge
    Bz = [Z;Z;Z;Z];
    % Other two vertices
    Bz(1,1) = Bz(1, 1)+ 30;
    Bz(1,4) = Bz(1, 4)+ 30;
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(4, :) = Z;
    
    Bz = Bz + [x,-5,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('sideUp1', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 90]);
%         view([0 0]);
    end

end