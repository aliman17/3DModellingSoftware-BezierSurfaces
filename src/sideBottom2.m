function sideBottom2(main)

    x = 0;
    df_alpha = 1;
    Bx = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
      
    [X, Y, Z, dx, dy, dz] = edge_fit2('sideBottom1', 'bottom');
    
    
    % Edge
    Bx = [X(1),x,x,X(4); 
               x,x,x,x;
               x,x,x,x;
               X(1),x,x,X(4)];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(1, :) = X;
    Bx(2, :) = X + dx;
    Bx = Bx + [-40,x,x,30; 
               -40,x,x,33;
               -40,x,x,35;
               -40,200,200,40];
      
    % Edge
    By = [Y(1),x,x,Y(1); 
               x,x,x,x;
               x,x,x,x;
               Y(1),x,x,Y(1)];
    % Rectangle
    By = square(By);
    % Correct edge
    By(1, :) = Y;
    By(2, :) = Y + dy;
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,150,x;
               20,20,150,x];
           
    % Edge
    Bz = [Z(1),x,x,Z(4); 
               x,x,x,x;
               x,x,x,x;
               Z(1)-30,x,x,Z(4)-40 ];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(1, :) = Z - 2;
    Bz(2, :) = Z - 2 + dz;
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,-10;
               x,x,-5,-10];
      
    

    % Write matrices into file
    storeMatrices('sideBottom2', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end