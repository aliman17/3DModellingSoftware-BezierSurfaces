function thin6()

    x = 0;
    df = 0.2;

    [X, Y, Z, dx, dy, dz] = edge_fit2('backUp1', 'bottom');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('side9', 'top');
    
    % Edge
    Bx = [X(1),x,x,X(4); 
          x,x,x,x;
          x,x,x,x;
          X2(1),x,x,X2(4)];
    % Rectangle
   Bx(1, :) = X;
    Bx(4, :) = X2;
    Bx = equal_dist_middle(Bx,false, false);
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y(1),x,x,Y(4); 
          x,x,x,x;
          x,x,x,x;
          Y2(1),x,x,Y2(4)];
    % Rectangle
    By(1, :) = Y;
    By(4, :) = Y2;
    By = equal_dist_middle(By,false, false);
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
    
    Bz = [Z(1),x,x,Z(4); 
          x,x,x,x;
          x,x,x,x;
          Z2(1),x,x,Z2(4)];
    % Rectangle
    %Bz = square(Bz);
    Bz(1, :) = Z;
    Bz(4, :) = Z2;
    Bz = equal_dist_middle(Bz,false, false);

    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('thin6', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        axis([600 3000 0 2000 0 1000])
        car3();
         view([0 90]);
%         view([0 0]);
    end

end