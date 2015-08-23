function back1(main)
    
    [X, Y, Z, dx, dy, dz] = edge_fit2('backUp2', 'right');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('backLight', 'right');

    x = 0;
    Y = flipud(Y);
    % Edge
    Bx = [X(4),x,x,X(1); 
          x,x,x,x;
          x,x,x,x;
          X(4)+10,x,x,X(1)+10];
    % Rectangle
    Bx = square(Bx);
    Bx(1, :) = X;
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
      
    % Edge
    mdl= 1225
    By = [Y(1)+55,x,x,mdl; 
          x,x,x,x;
          x,x,x,x;
          Y(1)+40,x,x,mdl];
    % Rectangle
    By = square(By);
    
    %By(1, :) = Y;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
    
    Bz = [Z(4),x,x,Z(1); 
          x,x,x,x;
          x,x,x,x;
          Z(4)-70,x,x,Z(1)-70];
    % Rectangle
    Bz = square(Bz);
    Bz(1, :) = Z;
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
      
    

    % Write matrices into file
    storeMatrices('back1', Bx, By, Bz);
    
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        computeAllMetrices()
         view([90 0]);
%         view([0 0]);
    end

end
