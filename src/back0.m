function back0(main)

    x = 0;

    [X, Y, Z, dx, dy, dz] = edge_fit2('side14', 'right');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('thin6', 'right');
    
    % Edge
    Bx = [X2(1),x,x,X2(1); 
          x,x,x,x;
          x,x,x,x;
          X2(1)+30,x,x,X2(1)+30];
    % Rectangle
    Bx = square(Bx)
    Bx(1, :) = flipud(X2);
    Bx(4, 1) = X(4);
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
      
    % Edge
    By = [Y2(4),x,x,Y2(1); 
          x,x,x,x;
          x,x,x,x;
          Y2(4)+20,x,x,Y2(1)+20];
    % Rectangle

    By = square(By)
    
    By(1, :) = flipud(Y2);
    
    By(4, :) = By(4, :) +20;
    By(4, 1) = Y(4);
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
    
    Bz = [Z2(4),x,x,Z2(1); 
          x,x,x,x;
          x,x,x,x;
          Z2(4)-240,x,x,Z2(4)-240];
    % Rectangle
    Bz = square(Bz)
    Bz(1, :) = flipud(Z2);
    Bz(4, 1) = Z(4);
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
      
    

    % Write matrices into file
    storeMatrices('back0', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        axis([600 3000 0 2000 0 1000])
        computeAllMetrices();
         view([90 0]);
%         view([0 0]);
    end

end