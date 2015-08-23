function back3(main)

    x = 0;

    [X, Y, Z, dx, dy, dz] = edge_fit2('back2', 'bottom');
    
    % Edge
    Bx = [X(1),x,x,X(4); 
          x,x,x,x;
          x,x,x,x;
          X(1)+10,x,x,X(4)+10];
    % Rectangle
    Bx = square(Bx)
    Bx(1, :) = X;
    Bx(2, :) = X + dx;
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
      
    % Edge
    By = [Y(1),x,x,Y(4); 
          x,x,x,x;
          x,x,x,x;
          Y(1)+10,x,x,Y(4)+10];
    % Rectangle

    By = square(By)
    
    By(1, :) = Y;
    By(2, :) = Y + dy;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
    
    Bz = [Z(1),x,x,Z(4); 
          x,x,x,x;
          x,x,x,x;
          Z(1)-60,x,x,Z(4)-60];
    % Rectangle
    Bz = square(Bz)
    Bz(1, :) = Z;
    Bz(2, :) = Z + dz;
    Bz(4, 3) = Bz(4, 4);
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
      
    

    % Write matrices into file
    storeMatrices('back3', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        axis([600 3000 0 2000 0 1000])
        computeAllMetrices();
         view([90 0]);
%         view([0 0]);
    end

end