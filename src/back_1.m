function back_1(main)
    
    [X, Y, Z, dx, dy, dz] = edge_fit2('back1', 'top');

    x = 0;

    % Edge
    Bx = [X(1)-500,x,x,X(4)-500; 
          x,x,x,x;
          x,x,x,x;
          X(1),x,x,X(4)];
    % Rectangle
    Bx = square(Bx);
    Bx(4, :) = X;
    Bx(:, 3) = Bx(:, 4);
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
      
    % Edge
    mdl= 1225
    By = [Y(1)+70,x,x,mdl; 
          x,x,x,x;
          x,x,x,x;
          Y(1),x,x,mdl];
    % Rectangle
    By = square(By);
    By(4, :) = Y;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
    
    Bz = [Z(1)+50,x,x,Z(4)+60; 
          x,x,x,x;
          x,x,x,x;
          Z(1),x,x,Z(4)];
    % Rectangle
    Bz = square(Bz);
    Bz(4, :) = Z;
    Bz(:, 3) = Bz(:, 4);
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
      
    

    % Write matrices into file
    storeMatrices('back_1', Bx, By, Bz);
    
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        computeAllMetrices()
         view([0 90]);
%         view([0 0]);
    end

end
